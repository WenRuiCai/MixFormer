echo "****************** Installing pytorch ******************"
conda install -y pytorch==1.7.0 torchvision==0.8.1 cudatoolkit=10.2 -c pytorch

echo ""
echo ""
echo "****************** Installing yaml ******************"
/home/wenrui/anaconda3/envs/mixformer/bin/pip install PyYAML -i https://pypi.tuna.tsinghua.edu.cn/simple

echo ""
echo ""
echo "****************** Installing easydict ******************"
/home/wenrui/anaconda3/envs/mixformer/bin/pip install easydict -i https://pypi.tuna.tsinghua.edu.cn/simple

echo ""
echo ""
echo "****************** Installing cython ******************"
/home/wenrui/anaconda3/envs/mixformer/bin/pip install cython -i https://pypi.tuna.tsinghua.edu.cn/simple

echo ""
echo ""
echo "****************** Installing opencv-python ******************"
/home/wenrui/anaconda3/envs/mixformer/bin/pip install opencv-python -i https://pypi.tuna.tsinghua.edu.cn/simple

echo ""
echo ""
echo "****************** Installing pandas ******************"
/home/wenrui/anaconda3/envs/mixformer/bin/pip install pandas -i https://pypi.tuna.tsinghua.edu.cn/simple

echo ""
echo ""
echo "****************** Installing tqdm ******************"
conda install -y tqdm

echo ""
echo ""
echo "****************** Installing coco toolkit ******************"
/home/wenrui/anaconda3/envs/mixformer/bin/pip install pycocotools -i https://pypi.tuna.tsinghua.edu.cn/simple

echo ""
echo ""
echo "****************** Installing jpeg4py python wrapper ******************"
#apt-get install libturbojpeg
/home/wenrui/anaconda3/envs/mixformer/bin/pip install jpeg4py -i https://pypi.tuna.tsinghua.edu.cn/simple

echo ""
echo ""
echo "****************** Installing tensorboard ******************"
/home/wenrui/anaconda3/envs/mixformer/bin/pip install tb-nightly -i https://pypi.tuna.tsinghua.edu.cn/simple

echo ""
echo ""
echo "****************** Installing tikzplotlib ******************"
/home/wenrui/anaconda3/envs/mixformer/bin/pip install tikzplotlib -i https://pypi.tuna.tsinghua.edu.cn/simple

echo ""
echo ""
echo "****************** Installing thop tool for FLOPs and Params computing ******************"
/home/wenrui/anaconda3/envs/mixformer/bin/pip install --upgrade git+https://github.com/Lyken17/pytorch-OpCounter.git

echo ""
echo ""
echo "****************** Installing colorama ******************"
/home/wenrui/anaconda3/envs/mixformer/bin/pip install colorama -i https://pypi.tuna.tsinghua.edu.cn/simple

echo ""
echo ""
echo "****************** Installing lmdb ******************"
/home/wenrui/anaconda3/envs/mixformer/bin/pip install lmdb -i https://pypi.tuna.tsinghua.edu.cn/simple

echo ""
echo ""
echo "****************** Installing scipy ******************"
/home/wenrui/anaconda3/envs/mixformer/bin/pip install scipy -i https://pypi.tuna.tsinghua.edu.cn/simple

echo ""
echo ""
echo "****************** Installing visdom ******************"
/home/wenrui/anaconda3/envs/mixformer/bin/pip install visdom -i https://pypi.tuna.tsinghua.edu.cn/simple

echo ""
echo ""
echo "****************** Installing vot-toolkit python ******************"
/home/wenrui/anaconda3/envs/mixformer/bin/pip install git+https://github.com/votchallenge/vot-toolkit-python

echo ""
echo ""
echo "****************** Installing onnx and onnxruntime-gpu ******************"
/home/wenrui/anaconda3/envs/mixformer/bin/pip install onnx onnxruntime-gpu==1.6.0 -i https://pypi.tuna.tsinghua.edu.cn/simple

echo ""
echo ""
echo "****************** Installing timm ******************"
/home/wenrui/anaconda3/envs/mixformer/bin/pip install timm==0.3.2 -i https://pypi.tuna.tsinghua.edu.cn/simple

echo "****************** Installing yacs/einops/thop ******************"
/home/wenrui/anaconda3/envs/mixformer/bin/pip install yacs -i https://pypi.tuna.tsinghua.edu.cn/simple
/home/wenrui/anaconda3/envs/mixformer/bin/pip install einops -i https://pypi.tuna.tsinghua.edu.cn/simple
/home/wenrui/anaconda3/envs/mixformer/bin/pip install thop -i https://pypi.tuna.tsinghua.edu.cn/simple

#echo "****************** Install ninja-build for Precise ROI pooling ******************"
#apt-get install ninja-build

echo "****************** Installation complete! ******************"
