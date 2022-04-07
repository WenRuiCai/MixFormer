# There are the detailed training settings for MixFormer, MixFormer-L and MixFormer-1k.
# 1. download pretrained CvT models (CvT-21-384x384-IN-22k.pth/CvT-w24-384x384-IN-22k.pth/CvT-21-384x384-IN-1k.pth) at https://onedrive.live.com/?authkey=%21AMXesxbtKwsdryE&id=56B9F9C97F261712%2115004&cid=56B9F9C97F261712
# 2. set the proper pretrained CvT models path 'MODEL:BACKBONE:PRETRAINED_PATH' at experiment/mixformer/CONFIG_NAME.yaml.
# 3. uncomment the following code to train corresponding trackers.
rm ./nohup.out
### Training MixFormer-22k
# Stage1: train mixformer without SPM
#nohup /home/wenrui/anaconda3/envs/mixformer/bin/python -u tracking/train.py --script mixformer --config baseline --save_dir /home/wenrui/MixFormer/models/mixformer --mode multiple --nproc_per_node 2 &
## Stage2: train mixformer_online, i.e., SPM (score prediction module)
#export CUDA_VISIBLE_DEVICES="8,9"
export PATH="/home/wenrui/tools/gcc-7.5.0/bin:/home/wenrui/tools/gcc-7.5.0/lib64:$PATH"
#export LD_LIBRARY_PATH="/home/wenrui/tools/gcc-7.5.0/lib:$LD_LIBRARY_PATH"
#export LD_LIBRARY_PATH="/home/wenrui/tools/gcc-7.5.0/lib64:$LD_LIBRARY_PATH"
#export C_INCLUDE_PATH="$C_INCLUDE_PATH:/home/wenrui/tools/gcc-7.5.0/include"
#export CPLUS_INCLUDE_PATH="$CPLUS_INCLUDE_PATH:/home/wenrui/tools/gcc-7.5.0/include"
#export LIBRARY_PATH="$LIBRARY_PATH:/home/wenrui/tools/gcc-7.5.0/lib"
#export PATH="/home/wenrui/usr/cuda-11.1/bin:$PATH"
#export PATH="$PATH:/home/wenrui/usr/bin"

nohup /home/wenrui/anaconda3/envs/mixformer/bin/python -u tracking/train.py --script mixformer_online --config baseline --save_dir /home/wenrui/MixFormer/models/mixformer_online --mode multiple --nproc_per_node 2 --stage1_model /home/wenrui/MixFormer/models/mixformer/checkpoints/train/mixformer/baseline/MixFormer_ep0500.pth.tar &
#g++ test.c -o test

### Training MixFormer-L-22k
#python tracking/train.py --script mixformer --config baseline_large --save_dir /YOUR/PATH/TO/SAVE/MIXFORMERL --mode multiple --nproc_per_node 8
#python tracking/train.py --script mixformer_online --config baseline_large --save_dir /YOUR/PATH/TO/SAVE/MIXFORMERL_ONLINE --mode multiple --nproc_per_node 8 --stage1_model /STAGE1/MODEL


### Training MixFormer-1k
#python tracking/train.py --script mixformer --config baseline_1k --save_dir /YOUR/PATH/TO/SAVE/MIXFORMER_1K --mode multiple --nproc_per_node 8
#python tracking/train.py --script mixformer_online --config baseline --save_dir /YOUR/PATH/TO/SAVE/MIXFORMER_1K_ONLINE --mode multiple --nproc_per_node 8 \
#     --stage1_model /STAGE1/MODEL


### Training MixFormer-22k_GOT
#python tracking/train.py --script mixformer --config baseline_got --save_dir /YOUR/PATH/TO/SAVE/MIXFORMER_GOT --mode multiple --nproc_per_node 8
#python tracking/train.py --script mixformer_online --config baseline_got --save_dir /YOUR/PATH/TO/SAVE/MIXFORMER_GOT_ONLINE --mode multiple --nproc_per_node 8 \
#    --stage1_model /STAGE1/MODEL