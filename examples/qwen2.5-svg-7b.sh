# R1 template
python train_zero_svg.py \
    --critic_type grpo \
    --gpus 8 \
    --enable_prefix_caching \
    --collocate \
    --vllm_sleep \
    --vllm_gpu_ratio 0.35 \
    --gradient-checkpointing \
    --flash-attn \
    --bf16 \
    --rnd-seed \
    --learning_rate 0.000001 \
    --lr_scheduler constant \
    --num_ppo_epochs 1 \
    --beta 0 \
    --oracle_type reward \
    --oracle svg \
    --pretrain Qwen/Qwen2.5-7B \
    --prompt_template r1_svg \
    --zero-stage 2 \
    --ref_offload \
    --prompt_data HuggingFaceM4/COCO \
    --train_split train \
    --input_key solution \
    --output_key image_path \
    --max-train 10000 \
    --num_prompt_epoch 1 \
    --prompt_max_length 1024 \
    --num_samples 8 \
    --temperature 1 \
    --top_p 1 \
    --generate_max_length 3000 \
    --log_completion_steps 10 \
    --save_steps -1 \
    --train_batch_size 128 \
    --train_batch_size_per_device 1 \
    --mini_train_batch_size_per_device 1 \
    --rollout_batch_size 128 \
    --rollout_batch_size_per_device 16 \
    --pi_buffer_maxlen_per_device 128 \
    --eval_batch_size 200 \
    --eval_steps -1 \
    --eval_temperature 0 \
    --eval_generate_max_length 3000 \
    --eval_data ./datasets/evaluation_suite \
    --eval_input_key input \
    --use-wb \
    --wb_project oat-zero \
    --wb-run-name qwen2.5-svg-7b-grpo-r1template






