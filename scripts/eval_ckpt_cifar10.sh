NAME=$1
ID_DATASET=CIFAR-10 
ID_LOC=datasets/CIFAR10
OOD_LOC=datasets/small_OOD_dataset


python eval_ood.py \
        --epoch 500 \
        --model resnet18 \
        --head mlp \
        --gpu 0 \
        --score knn \
        --K 100 \
        --in_dataset ${ID_DATASET} \
        --id_loc ${ID_LOC} \
        --ood_loc ${OOD_LOC} \
        --name 02_11_19:06_cider_resnet18_lr_0.5_cosine_True_bsz_512_cider_wd_2.0_500_128_trial_0_temp_0.1_CIFAR-10_pm_0.95


# python eval_ood.py \
#         --epoch 500 \
#         --model resnet18 \
#         --head mlp \
#         --gpu 0 \
#         --score knn \
#         --K 100 \
#         --in_dataset ${ID_DATASET} \
#         --id_loc ${ID_LOC} \
#         --ood_loc ${OOD_LOC} \
#         --name ${NAME}