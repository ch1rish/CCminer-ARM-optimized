# To change the cuda arch, edit Makefile.am and run ./build.sh

extracflags="-O3"

./configure CXXFLAGS="-Rpass-missed=loop-vectorize -Rpass-analysis=loop-vectorize -Wl,-hugetlbfs-align -funroll-loops -finline-functions $extracflags -mcpu=cortex-a55 -mtune=cortex-a55" CFLAGS="-mcpu=cortex-a55 -mtune=cortex-a55  $extracflags -mllvm -enable-loop-distribute"   CXX=clang++ CC=clang LDFLAGS="-v -flto  -Wl,-hugetlbfs-align" 
