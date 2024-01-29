import os
import itertools
import pathlib
NGPUS = 8

def eval_all(model, outputdir, sdpath, dev, lm=True, qa=True, oi=True):
    if '7b' in model.lower():
        bs = 4
    elif '13b' in model.lower():
        bs = 1
    else:
        bs = None
    lm_cmd = f'''python eval-nlp/eval_LM.py \
    --model-name {model} \
    --load {sdpath} \
    --output-dir {outputdir} '''

    qa_cmd = f'''python eval-nlp/eval_lm_eval.py \
    --model-name {model} \
    --load {sdpath} \
    --batch-size 1 \
    --output-dir {outputdir}'''
    
    oi_cmd = f'''python eval-nlp/eval_lm_eval.py \
    --model-name {model} \
    --load {sdpath} \
    --tasks mmlu \
    --num-fewshot 5 \
    --batch-size 1 \
    --output-dir {outputdir}'''

    # oi_cmd = f'''python eval-nlp/eval_MMLU_oi.py \
    # --model_name_or_path {model} \
    # --load {sdpath} \
    # --save_dir {os.path.join(outputdir,'MMLU_OI')} \
    # --eval_batch_size {bs}'''
    if lm:
        print(f'CUDA_VISIBLE_DEVICES={dev} ' + lm_cmd)
    if qa:
        print(f'CUDA_VISIBLE_DEVICES={dev} ' + qa_cmd)
    if oi:
        print(f'CUDA_VISIBLE_DEVICES={dev} ' + oi_cmd)

all_cmds = {i:[] for i in range(NGPUS)}

# template = '''python opt.py facebook/{} c4 \
#     --wbits {} \
#     --quant {} \
#     --incoh_processing \
#     --save {}
# '''
# models = ['opt-125m','opt-350m','opt-1.3b','opt-2.7b','opt-6.7b','opt-13b','opt-30b']
# wbits = [4,3,2]
# quant_methods = ['ldlq','ldlqRG']
# dir_template = 'Experiments/{}-w{}-{}/'

# dev = 0
# for w_bit, model, quant_method in itertools.product(wbits,models,quant_methods):
#     dir = dir_template.format(model.split('/')[-1],w_bit)
#     save_path = os.path.join(dir,'qsd.pt')
#     pathlib.Path(dir).mkdir(exist_ok=True,parents=True)
#     print(f'CUDA_VISIBLE_DEVICES={dev} ' + template.format(model,w_bit,quant_method, save_path)+' >> ' + os.path.join(dir,'log.txt'))
#     eval_all(model, dir, save_path, dev, qa=False)
#     # os.system(template.format(model,w_bit,dir)+' >> ' + os.path.join(dir,'log.txt'))
#     dev = (dev + 1) % NGPUS
#     print('\n')

template = '''python llama.py \
    {} c4 \
    --wbits {} \
    --quant {} \
    --pre_gptqH --pre_rescale --pre_proj --qfn b \
    --save {}'''

models = ['meta-llama/Llama-2-7b-hf','meta-llama/Llama-2-13b-hf']
wbits = [4,3,2]
quant_methods = ['ldlq','ldlqRG']
dir_template = 'Experiments/{}-w{}-{}/'


dev = 0
for w_bit, model, quant_method in itertools.product(wbits,models,quant_methods):
    dir = dir_template.format(model.split('/')[-1],w_bit, quant_method)
    save_path = os.path.join(dir,'qsd.pt')
    pathlib.Path(dir).mkdir(exist_ok=True,parents=True)
    print(f'CUDA_VISIBLE_DEVICES={dev} ' + template.format(model,w_bit,quant_method, save_path)+' >> ' + os.path.join(dir,'log.txt'))
    eval_all(model, dir, save_path, dev)
    # os.system(template.format(model,w_bit,dir)+' >> ' + os.path.join(dir,'log.txt'))
    dev = (dev + 1) % NGPUS
    print('\n')
    