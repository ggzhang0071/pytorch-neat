apt update 
apt install -y  graphviz xdg-utils
pip install -r requirements.txt
cd .. 
python setup.py install
