**OLA Trigger config to control IKEA Trådfri lights with DMX (ArtNet, sACN or via DMX input) - Work in process**

**Requirements**

* [OLA](https://www.openlighting.org/ola/)
* [libcoap with dtls support](https://github.com/obgm/libcoap)
* [IKEA Trådfri gateway](https://www.ikea.com)

**Installation**
  
* Download and install libcoap with dtls support:
```sudo apt-get install libtool
git clone --recursive https://github.com/obgm/libcoap.git
cd libcoap
git checkout dtls
git submodule update --init --recursive
./autogen.sh
./configure --disable-documentation --disable-shared
make
sudo make install
```
* Download the [tradfri.conf](tradfri.conf) file and edit the configuration section. 
* Download the shell scripts and place them in the same directory. Make the shell scripts executable with chmod +x

[OLA trigger documentation](https://www.openlighting.org/ola/advanced-topics/ola-dmx-trigger/)

**Usage** 

* Before running ola_trigger, make sure that olad is running and the universe has been configured with a DMX512 source.  
The config file is provided on the command line:

`ola_trigger tradfri.conf`
