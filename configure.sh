# To change the cuda arch, edit Makefile.am and run ./build.sh

extracflags="-O3 -ffinite-loops -ffast-math -mfix-cortex-a53-835769 -D_REENTRANT -falign-functions=16 -fomit-frame-pointer -fpic -pthread -flto -fuse-ld=lld -fno-stack-protector"

./configure CXXFLAGS="-Rpass-missed=loop-vectorize -Rpass-analysis=loop-vectorize -Wl,-hugetlbfs-align -funroll-loops -finline-functions $extracflags -march=armv8.2-a+sb+crypto -mtune=cortex-a55" CFLAGS="-finline-functions -Wl,-hugetlbfs-align -march=armv8.2-a+sb+crypto -mtune=cortex-a55 -Rpass-missed=loop-vectorize -Rpass-analysis=loop-vectorize $extracflags -mllvm -enable-loop-distribute" CXX=clang++ CC=clang LDFLAGS="-v -flto -Wl,-hugetlbfs-align"
