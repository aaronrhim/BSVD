OMP_NUM_THREADS=4 CUDA_VISIBLE_DEVICES=3 python train_crvd_ddp.py \
    --exp_name       1105_crvd_slimcnn_batch8_lr_1e-4_seq7 \
    --training_mode all \
    --model=SlimCNN \
    --lr            1e-4 \
    --batch_size    4 \
    --patch_size    128 \
    --save_every_epochs 10 \
    --save_every    100 \
    --epochs 12000 \
    --workers 4 \
    --channels1 16 32 64 \
    --channels2 16 32 64 \
    --shift shift \
    --loss l1 \
    --A 1 \
    --B 30 \
    --sequence_length 7 \
    --dist-url 'tcp://localhost:10005' --multiprocessing-distributed --world-size 1 --rank 0 \

