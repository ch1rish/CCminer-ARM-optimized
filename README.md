# ccminer for ARM (cortex-a55) (Orange Pi 5 rk3588s)

 Based on https://github.com/monkins1010/ccminer/tree/ARM

# Instructions for Orange Pi 5 4gb base model
 Start with One of the following images:
 Ubuntu 22.04.3 Joshua-Riek's image --> https://github.com/Joshua-Riek/ubuntu-rockchip/releases/download/v1.23/ubuntu-22.04.3-preinstalled-server-arm64-orangepi-5.img.xz
 Official Orange Pi 5 Ubuntu Jammy Server image --> https://drive.google.com/drive/folders/1i5zQOg1GIA4_VNGikFl2nPM0Y2MBw2M0?usp=share_link

 Make sure it's updated
sudo apt-get update -y && sudo apt-get --with-new-pkgs upgrade -y && sudo apt autoremove -y && sudo reboot

Git and Build Process:
```
sudo apt-get install software-properties-common
sudo wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
sudo add-apt-repository 'deb http://apt.llvm.org/jammy/ llvm-toolchain-jammy-16 main'
sudo apt-get update
sudo apt-get install libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential -y
sudo apt-get install -y libllvm-16-ocaml-dev libllvm16 llvm-16 llvm-16-dev llvm-16-doc llvm-16-examples llvm-16-runtime clang-16 clang-tools-16 clang-16-doc libclang-common-16-dev libclang-16-dev libclang1-16 clang-format-16 python3-clang-16 clangd-16 clang-tidy-16 libclang-rt-16-dev libpolly-16-dev libfuzzer-16-dev lldb-16 lld-16 libc++-16-dev libc++abi-16-dev libomp-16-dev libclc-16-dev libunwind-16-dev libmlir-16-dev mlir-16-tools flang-16 libclang-rt-16-dev-wasm32 libclang-rt-16-dev-wasm64 libclang-rt-16-dev-wasm32 libclang-rt-16-dev-wasm64
sudo ln -sf /usr/lib/llvm-16/bin/clang-16 /usr/bin/clang
sudo ln -sf /usr/lib/llvm-16/bin/clang++ /usr/bin/clang++

git clone https://github.com/ch1rish/CCminer-ARM-optimized.git
cd CCminer-ARM-optimized
chmod +x build.sh
chmod +x configure.sh
chmod +x autogen.sh
CXX=clang++ CC=clang ./build.sh
```

For specific details on installing clang-16 on your current OS, check: https://apt.llvm.org/
