**OLA Trigger config to control IKEA Trådfri lights with DMX (Art-Net, sACN or via DMX input)**

**Requirements**

* [OLA](https://www.openlighting.org/ola/)
* [libcoap with dtls support](https://github.com/obgm/libcoap)
* [IKEA Trådfri gateway](http://www.ikea.com)

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

* Use the following string to connect to the Trådfri gateway and create a new DTLS identity  (you will get a pre shared key from the gateway)  
SECURITY_KEY = Trådfri security key. Printed on the back of gateway  
IDENTITY = Your API user  
HOSTNAME = Trådfri gateway hostname or IP address  
  
```coap-client -m post -u "Client_identity" -k "SECURITY_KEY" -e '{"9090":"IDENTITY"}' "coaps://HOSTNAME:5684/15011/9063"```  
* Download the [tradfri.conf](tradfri.conf) file and edit the configuration section. 
* Download the [tradfri.sh](tradfri.sh) shell script, place it in the same directory and make it executable with `chmod +x`

[OLA trigger documentation](https://www.openlighting.org/ola/advanced-topics/ola-dmx-trigger/)

**Usage** 

* Before running ola_trigger, make sure that olad is running and the universe has been configured with a DMX512 source.  
The config file is provided on the command line:

`ola_trigger tradfri.conf`  
  <br>

[![IKEA Trådfri bulb controlled with DMX - video clip](https://i.vimeocdn.com/video/642888547_640.jpg)](https://vimeo.com/223957093)
