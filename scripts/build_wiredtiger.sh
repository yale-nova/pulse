# Install dependency
# sudo apt-get install python3-dev swig

mkdir ${WT_SDK}/build
mkdir ${WT_SDK}/build/install
cd ${WT_SDK}/build
cmake ..
make -j 12
cmake --install . --prefix=${WT_SDK}/build/install
