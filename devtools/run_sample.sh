TOP=`pwd`/..
timestamp=`date +%Y%m%d%H%M%S`
cl=`git rev-parse HEAD|cut -c1-7`

cd $TOP

rm -fr *.log
python mountain_climb_run.py 2>&1 |tee TPA_LSTM_${cl}_$timestamp.log
python pole_run.py  2>&1 |tee test_$timestamp.log
python xor_run.py  2>&1 |tee test_$timestamp.log

