CUDA_VISIBLE_DEVICES=0 python llama.py     meta-llama/Llama-2-7b-hf c4     --wbits 4     --quant ldlq     --pre_gptqH --pre_rescale --pre_proj --qfn b     --save Experiments/Llama-2-7b-hf-w4-ldlq/qsd.pt >> Experiments/Llama-2-7b-hf-w4-ldlq/log.txt
CUDA_VISIBLE_DEVICES=0 python eval-nlp/eval_LM.py     --model-name meta-llama/Llama-2-7b-hf     --load Experiments/Llama-2-7b-hf-w4-ldlq/qsd.pt     --output-dir Experiments/Llama-2-7b-hf-w4-ldlq/ 
CUDA_VISIBLE_DEVICES=0 python eval-nlp/eval_lm_eval.py     --model-name meta-llama/Llama-2-7b-hf     --load Experiments/Llama-2-7b-hf-w4-ldlq/qsd.pt     --batch-size 1     --output-dir Experiments/Llama-2-7b-hf-w4-ldlq/
CUDA_VISIBLE_DEVICES=0 python eval-nlp/eval_lm_eval.py     --model-name meta-llama/Llama-2-7b-hf     --load Experiments/Llama-2-7b-hf-w4-ldlq/qsd.pt     --tasks mmlu     --num-fewshot 5     --batch-size 1     --output-dir Experiments/Llama-2-7b-hf-w4-ldlq/

CUDA_VISIBLE_DEVICES=0 python llama.py     meta-llama/Llama-2-7b-hf c4     --wbits 2     --quant ldlq     --pre_gptqH --pre_rescale --pre_proj --qfn b     --save Experiments/Llama-2-7b-hf-w2-ldlq/qsd.pt >> Experiments/Llama-2-7b-hf-w2-ldlq/log.txt
CUDA_VISIBLE_DEVICES=0 python eval-nlp/eval_LM.py     --model-name meta-llama/Llama-2-7b-hf     --load Experiments/Llama-2-7b-hf-w2-ldlq/qsd.pt     --output-dir Experiments/Llama-2-7b-hf-w2-ldlq/ 
CUDA_VISIBLE_DEVICES=0 python eval-nlp/eval_lm_eval.py     --model-name meta-llama/Llama-2-7b-hf     --load Experiments/Llama-2-7b-hf-w2-ldlq/qsd.pt     --batch-size 1     --output-dir Experiments/Llama-2-7b-hf-w2-ldlq/
CUDA_VISIBLE_DEVICES=0 python eval-nlp/eval_lm_eval.py     --model-name meta-llama/Llama-2-7b-hf     --load Experiments/Llama-2-7b-hf-w2-ldlq/qsd.pt     --tasks mmlu     --num-fewshot 5     --batch-size 1     --output-dir Experiments/Llama-2-7b-hf-w2-ldlq/

CUDA_VISIBLE_DEVICES=1 python llama.py     meta-llama/Llama-2-7b-hf c4     --wbits 4     --quant ldlqRG     --pre_gptqH --pre_rescale --pre_proj --qfn b     --save Experiments/Llama-2-7b-hf-w4-ldlqRG/qsd.pt >> Experiments/Llama-2-7b-hf-w4-ldlqRG/log.txt
CUDA_VISIBLE_DEVICES=1 python eval-nlp/eval_LM.py     --model-name meta-llama/Llama-2-7b-hf     --load Experiments/Llama-2-7b-hf-w4-ldlqRG/qsd.pt     --output-dir Experiments/Llama-2-7b-hf-w4-ldlqRG/ 
CUDA_VISIBLE_DEVICES=1 python eval-nlp/eval_lm_eval.py     --model-name meta-llama/Llama-2-7b-hf     --load Experiments/Llama-2-7b-hf-w4-ldlqRG/qsd.pt     --batch-size 1     --output-dir Experiments/Llama-2-7b-hf-w4-ldlqRG/
CUDA_VISIBLE_DEVICES=1 python eval-nlp/eval_lm_eval.py     --model-name meta-llama/Llama-2-7b-hf     --load Experiments/Llama-2-7b-hf-w4-ldlqRG/qsd.pt     --tasks mmlu     --num-fewshot 5     --batch-size 1     --output-dir Experiments/Llama-2-7b-hf-w4-ldlqRG/

CUDA_VISIBLE_DEVICES=1 python llama.py     meta-llama/Llama-2-7b-hf c4     --wbits 2     --quant ldlqRG     --pre_gptqH --pre_rescale --pre_proj --qfn b     --save Experiments/Llama-2-7b-hf-w2-ldlqRG/qsd.pt >> Experiments/Llama-2-7b-hf-w2-ldlqRG/log.txt
CUDA_VISIBLE_DEVICES=1 python eval-nlp/eval_LM.py     --model-name meta-llama/Llama-2-7b-hf     --load Experiments/Llama-2-7b-hf-w2-ldlqRG/qsd.pt     --output-dir Experiments/Llama-2-7b-hf-w2-ldlqRG/ 
CUDA_VISIBLE_DEVICES=1 python eval-nlp/eval_lm_eval.py     --model-name meta-llama/Llama-2-7b-hf     --load Experiments/Llama-2-7b-hf-w2-ldlqRG/qsd.pt     --batch-size 1     --output-dir Experiments/Llama-2-7b-hf-w2-ldlqRG/
CUDA_VISIBLE_DEVICES=1 python eval-nlp/eval_lm_eval.py     --model-name meta-llama/Llama-2-7b-hf     --load Experiments/Llama-2-7b-hf-w2-ldlqRG/qsd.pt     --tasks mmlu     --num-fewshot 5     --batch-size 1     --output-dir Experiments/Llama-2-7b-hf-w2-ldlqRG/

CUDA_VISIBLE_DEVICES=2 python llama.py     meta-llama/Llama-2-13b-hf c4     --wbits 4     --quant ldlq     --pre_gptqH --pre_rescale --pre_proj --qfn b     --save Experiments/Llama-2-13b-hf-w4-ldlq/qsd.pt >> Experiments/Llama-2-13b-hf-w4-ldlq/log.txt
CUDA_VISIBLE_DEVICES=2 python eval-nlp/eval_LM.py     --model-name meta-llama/Llama-2-13b-hf     --load Experiments/Llama-2-13b-hf-w4-ldlq/qsd.pt     --output-dir Experiments/Llama-2-13b-hf-w4-ldlq/ 
CUDA_VISIBLE_DEVICES=2 python eval-nlp/eval_lm_eval.py     --model-name meta-llama/Llama-2-13b-hf     --load Experiments/Llama-2-13b-hf-w4-ldlq/qsd.pt     --batch-size 1     --output-dir Experiments/Llama-2-13b-hf-w4-ldlq/
CUDA_VISIBLE_DEVICES=2 python eval-nlp/eval_lm_eval.py     --model-name meta-llama/Llama-2-13b-hf     --load Experiments/Llama-2-13b-hf-w4-ldlq/qsd.pt     --tasks mmlu     --num-fewshot 5     --batch-size 1     --output-dir Experiments/Llama-2-13b-hf-w4-ldlq/

CUDA_VISIBLE_DEVICES=2 python llama.py     meta-llama/Llama-2-13b-hf c4     --wbits 2     --quant ldlq     --pre_gptqH --pre_rescale --pre_proj --qfn b     --save Experiments/Llama-2-13b-hf-w2-ldlq/qsd.pt >> Experiments/Llama-2-13b-hf-w2-ldlq/log.txt
CUDA_VISIBLE_DEVICES=2 python eval-nlp/eval_LM.py     --model-name meta-llama/Llama-2-13b-hf     --load Experiments/Llama-2-13b-hf-w2-ldlq/qsd.pt     --output-dir Experiments/Llama-2-13b-hf-w2-ldlq/ 
CUDA_VISIBLE_DEVICES=2 python eval-nlp/eval_lm_eval.py     --model-name meta-llama/Llama-2-13b-hf     --load Experiments/Llama-2-13b-hf-w2-ldlq/qsd.pt     --batch-size 1     --output-dir Experiments/Llama-2-13b-hf-w2-ldlq/
CUDA_VISIBLE_DEVICES=2 python eval-nlp/eval_lm_eval.py     --model-name meta-llama/Llama-2-13b-hf     --load Experiments/Llama-2-13b-hf-w2-ldlq/qsd.pt     --tasks mmlu     --num-fewshot 5     --batch-size 1     --output-dir Experiments/Llama-2-13b-hf-w2-ldlq/

CUDA_VISIBLE_DEVICES=3 python llama.py     meta-llama/Llama-2-13b-hf c4     --wbits 4     --quant ldlqRG     --pre_gptqH --pre_rescale --pre_proj --qfn b     --save Experiments/Llama-2-13b-hf-w4-ldlqRG/qsd.pt >> Experiments/Llama-2-13b-hf-w4-ldlqRG/log.txt
CUDA_VISIBLE_DEVICES=3 python eval-nlp/eval_LM.py     --model-name meta-llama/Llama-2-13b-hf     --load Experiments/Llama-2-13b-hf-w4-ldlqRG/qsd.pt     --output-dir Experiments/Llama-2-13b-hf-w4-ldlqRG/ 
CUDA_VISIBLE_DEVICES=3 python eval-nlp/eval_lm_eval.py     --model-name meta-llama/Llama-2-13b-hf     --load Experiments/Llama-2-13b-hf-w4-ldlqRG/qsd.pt     --batch-size 1     --output-dir Experiments/Llama-2-13b-hf-w4-ldlqRG/
CUDA_VISIBLE_DEVICES=3 python eval-nlp/eval_lm_eval.py     --model-name meta-llama/Llama-2-13b-hf     --load Experiments/Llama-2-13b-hf-w4-ldlqRG/qsd.pt     --tasks mmlu     --num-fewshot 5     --batch-size 1     --output-dir Experiments/Llama-2-13b-hf-w4-ldlqRG/

CUDA_VISIBLE_DEVICES=3 python llama.py     meta-llama/Llama-2-13b-hf c4     --wbits 2     --quant ldlqRG     --pre_gptqH --pre_rescale --pre_proj --qfn b     --save Experiments/Llama-2-13b-hf-w2-ldlqRG/qsd.pt >> Experiments/Llama-2-13b-hf-w2-ldlqRG/log.txt
CUDA_VISIBLE_DEVICES=3 python eval-nlp/eval_LM.py     --model-name meta-llama/Llama-2-13b-hf     --load Experiments/Llama-2-13b-hf-w2-ldlqRG/qsd.pt     --output-dir Experiments/Llama-2-13b-hf-w2-ldlqRG/ 
CUDA_VISIBLE_DEVICES=3 python eval-nlp/eval_lm_eval.py     --model-name meta-llama/Llama-2-13b-hf     --load Experiments/Llama-2-13b-hf-w2-ldlqRG/qsd.pt     --batch-size 1     --output-dir Experiments/Llama-2-13b-hf-w2-ldlqRG/
CUDA_VISIBLE_DEVICES=3 python eval-nlp/eval_lm_eval.py     --model-name meta-llama/Llama-2-13b-hf     --load Experiments/Llama-2-13b-hf-w2-ldlqRG/qsd.pt     --tasks mmlu     --num-fewshot 5     --batch-size 1     --output-dir Experiments/Llama-2-13b-hf-w2-ldlqRG/

CUDA_VISIBLE_DEVICES=4 python llama.py     meta-llama/Llama-2-7b-hf c4     --wbits 3     --quant ldlq     --pre_gptqH --pre_rescale --pre_proj --qfn b     --save Experiments/Llama-2-7b-hf-w3-ldlq/qsd.pt >> Experiments/Llama-2-7b-hf-w3-ldlq/log.txt
CUDA_VISIBLE_DEVICES=4 python eval-nlp/eval_LM.py     --model-name meta-llama/Llama-2-7b-hf     --load Experiments/Llama-2-7b-hf-w3-ldlq/qsd.pt     --output-dir Experiments/Llama-2-7b-hf-w3-ldlq/ 
CUDA_VISIBLE_DEVICES=4 python eval-nlp/eval_lm_eval.py     --model-name meta-llama/Llama-2-7b-hf     --load Experiments/Llama-2-7b-hf-w3-ldlq/qsd.pt     --batch-size 1     --output-dir Experiments/Llama-2-7b-hf-w3-ldlq/
CUDA_VISIBLE_DEVICES=4 python eval-nlp/eval_lm_eval.py     --model-name meta-llama/Llama-2-7b-hf     --load Experiments/Llama-2-7b-hf-w3-ldlq/qsd.pt     --tasks mmlu     --num-fewshot 5     --batch-size 1     --output-dir Experiments/Llama-2-7b-hf-w3-ldlq/

CUDA_VISIBLE_DEVICES=5 python llama.py     meta-llama/Llama-2-7b-hf c4     --wbits 3     --quant ldlqRG     --pre_gptqH --pre_rescale --pre_proj --qfn b     --save Experiments/Llama-2-7b-hf-w3-ldlqRG/qsd.pt >> Experiments/Llama-2-7b-hf-w3-ldlqRG/log.txt
CUDA_VISIBLE_DEVICES=5 python eval-nlp/eval_LM.py     --model-name meta-llama/Llama-2-7b-hf     --load Experiments/Llama-2-7b-hf-w3-ldlqRG/qsd.pt     --output-dir Experiments/Llama-2-7b-hf-w3-ldlqRG/ 
CUDA_VISIBLE_DEVICES=5 python eval-nlp/eval_lm_eval.py     --model-name meta-llama/Llama-2-7b-hf     --load Experiments/Llama-2-7b-hf-w3-ldlqRG/qsd.pt     --batch-size 1     --output-dir Experiments/Llama-2-7b-hf-w3-ldlqRG/
CUDA_VISIBLE_DEVICES=5 python eval-nlp/eval_lm_eval.py     --model-name meta-llama/Llama-2-7b-hf     --load Experiments/Llama-2-7b-hf-w3-ldlqRG/qsd.pt     --tasks mmlu     --num-fewshot 5     --batch-size 1     --output-dir Experiments/Llama-2-7b-hf-w3-ldlqRG/

CUDA_VISIBLE_DEVICES=6 python llama.py     meta-llama/Llama-2-13b-hf c4     --wbits 3     --quant ldlq     --pre_gptqH --pre_rescale --pre_proj --qfn b     --save Experiments/Llama-2-13b-hf-w3-ldlq/qsd.pt >> Experiments/Llama-2-13b-hf-w3-ldlq/log.txt
CUDA_VISIBLE_DEVICES=6 python eval-nlp/eval_LM.py     --model-name meta-llama/Llama-2-13b-hf     --load Experiments/Llama-2-13b-hf-w3-ldlq/qsd.pt     --output-dir Experiments/Llama-2-13b-hf-w3-ldlq/ 
CUDA_VISIBLE_DEVICES=6 python eval-nlp/eval_lm_eval.py     --model-name meta-llama/Llama-2-13b-hf     --load Experiments/Llama-2-13b-hf-w3-ldlq/qsd.pt     --batch-size 1     --output-dir Experiments/Llama-2-13b-hf-w3-ldlq/
CUDA_VISIBLE_DEVICES=6 python eval-nlp/eval_lm_eval.py     --model-name meta-llama/Llama-2-13b-hf     --load Experiments/Llama-2-13b-hf-w3-ldlq/qsd.pt     --tasks mmlu     --num-fewshot 5     --batch-size 1     --output-dir Experiments/Llama-2-13b-hf-w3-ldlq/

CUDA_VISIBLE_DEVICES=7 python llama.py     meta-llama/Llama-2-13b-hf c4     --wbits 3     --quant ldlqRG     --pre_gptqH --pre_rescale --pre_proj --qfn b     --save Experiments/Llama-2-13b-hf-w3-ldlqRG/qsd.pt >> Experiments/Llama-2-13b-hf-w3-ldlqRG/log.txt
CUDA_VISIBLE_DEVICES=7 python eval-nlp/eval_LM.py     --model-name meta-llama/Llama-2-13b-hf     --load Experiments/Llama-2-13b-hf-w3-ldlqRG/qsd.pt     --output-dir Experiments/Llama-2-13b-hf-w3-ldlqRG/ 
CUDA_VISIBLE_DEVICES=7 python eval-nlp/eval_lm_eval.py     --model-name meta-llama/Llama-2-13b-hf     --load Experiments/Llama-2-13b-hf-w3-ldlqRG/qsd.pt     --batch-size 1     --output-dir Experiments/Llama-2-13b-hf-w3-ldlqRG/
CUDA_VISIBLE_DEVICES=7 python eval-nlp/eval_lm_eval.py     --model-name meta-llama/Llama-2-13b-hf     --load Experiments/Llama-2-13b-hf-w3-ldlqRG/qsd.pt     --tasks mmlu     --num-fewshot 5     --batch-size 1     --output-dir Experiments/Llama-2-13b-hf-w3-ldlqRG/