#!/usr/bin/env bash


export DEBIAN_FRONTEND=noninteractive
sudo apt-get update                                                                                                                                                                                                                     
sudo apt-get install -y software-properties-common                                                                                                                                                                     
sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test 2>&1
sudo apt-get update                                                                                                                                                                                                                     
sudo apt-get install -y gcc-7 g++-7 gfortran-7                                                                                                                                                                                          
which gcc 2>/dev/null || sudo update-alternatives --remove-all gcc 2>/dev/null
which g++ 2>/dev/null || sudo update-alternatives --remove-all g++ 2>/dev/null
which gfortran 2>/dev/null || sudo update-alternatives --remove-all gfortran 2>/dev/null
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-7 20                                                                                                                                                                   
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-7 20                                                                                                                                                                   
sudo update-alternatives --install /usr/bin/gfortran gfortran /usr/bin/gfortran-7 20                                                                                                                                                    
sudo update-alternatives --config gcc                                                                                                                                                                                                   
sudo update-alternatives --config g++                                                                                                                                                                                                   
sudo update-alternatives --config gfortran                                                                                                                                                                                              

gcc --version
g++ --version
gfortran --version
