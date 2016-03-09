CWD=`dirname $0`

wget http://glaros.dtc.umn.edu/gkhome/fetch/sw/parmetis/parmetis-4.0.3.tar.gz
tar -zxvf parmetis-4.0.3.tar.gz
cd parmetis-4.0.3
make config shared=1
make && make install
cd metis
make && make install
cd $CWD

wget http://rl-glue-ext.googlecode.com/files/rlglue-3.04.tar.gz
tar -zxvf rlglue-3.04.tar.gz
cd rlglue-3.04
./configure
make && make install
cd $CWD

wget http://rl-glue-ext.googlecode.com/files/c-codec-2.0.tar.gz
tar -zxvf c-codec-2.0.tar.gz
cd c-codec-2.0
./configure
make && make install
cd $CWD
