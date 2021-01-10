sudo apt-get update
sudo apt-get upgrade

# some standard dev libraries
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev python3-dev liblzma-dev python-openssl git

# some other stuff
sudo apt-get install -y cython
sudo apt-get install -y python3-pip
sudo apt-get install -y python3-venv

# virtualenv
python3 -m venv ~/python-envs/env
source ~/python-envs/env/bin/activate

# tensorflow requirements
sudo apt-get install -y libhdf5-serial-dev hdf5-tools libhdf5-dev zlib1g-dev zip libjpeg8-dev liblapack-dev libblas-dev gfortran
pip3 install -U pip testresources setuptools==49.6.0

# tensorflow requirements
pip3 install -U numpy==1.16.1 future==0.18.2 mock==3.0.5 h5py==2.10.0 keras_preprocessing==1.1.1 keras_applications==1.0.8 gast==0.2.2 futures protobuf pybind11
# version 2.x
# sudo pip3 install --pre --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v43 tensorflow-gpu
# version 1.5
pip3 install --pre --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v44 'tensorflow<2'
pip3 install tensorflow-object-detection-api

pip3 install wheel
pip3 install pandas
pip3 install matplotlib
pip3 install jupyter

# add venv to bash
echo '#### My Stuff' >> ~/.bashrc
echo 'source ~/python-envs/env/bin/activate' >> ~/.bashrc
