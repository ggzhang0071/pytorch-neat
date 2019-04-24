TOP=`pwd`/..
timestamp=`date +%Y%m%d%H%M%S`
cl=`git rev-parse HEAD|cut -c1-7`

cd $TOP

rm -fr *.log
python mountain_climb_run.py 2>&1 |tee mountain_climb_run_${cl}_$timestamp.log
python pole_run.py  2>&1 |tee pole_run_$timestamp.log
python xor_run.py  2>&1 |tee x_or_run_$timestamp.log

