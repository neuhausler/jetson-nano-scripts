CURRENT=$PWD
cd ~/work/gitroot
git clone https://github.com/uber/ludwig.git
cd ludwig
git checkout 2a18fb6f6eaa5401f32f1b4fccbeb002aaba64fe
pip install -r requirements.txt
python setup.py install

