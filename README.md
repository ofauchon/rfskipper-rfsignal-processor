rfskipper-rfsignal-processor

# Introduction

RFSkipper-pulse-processor main functions :  

- Connect MQTT Broker and subscribe to 'signal_raw' topic
- Try to decode raw signal pulses
- Publish decoded messages to 'signal_decoded' topic


# Build and run 

  * Run local MQTT Broker (Optionnal)

If you don't already have a MQTT Broker, you can install one local
instance of Mosquitto MQTT broker. 

Instructions for Linux (ArchLinux)
```
$ pacman -S mosquitto 
$ systemctl start mosquitto
$ systemctl enable mosquitto
```

Instructions for Windows => https://mosquitto.org/download/

  * Build and run RFSkipper-pulse-processor

libmoquitto libraries and headers are provided by mosquitto server packages
(this may change depending on your linux distribution)

```
make clean all
or 
gcc -o rfprocessor -lmosquitto rfprocessor.c
```


Have a look to the options first: 

```
<todo>
```
$ go run rfskipper-decoder.go --serial-dev /dev/ttyACMX --serial-baudrate 57600
```

  * Connect with a mosquitto subscriber

```
$ mosquitto_sub  -L mqtt://localhost:1883/signal_raw 

{id:20,count:131,pulses:[10,40,30,30,20,230,20,40,30,30,20,700,30,40,10,40,30,700,20,40,30,30,30,230,20,470,20,40,20,40,10,240,20,40,30,720,10,40,20,40,20,40,30,30,30,570,20,30,30,40,20,40,20,230,500,40,20,290,30,40,20,720,30,40,20,40,20,630,10,490,0,800,30,30,30,40,30,490,10,40,30,30,30,230,20,40,20,40,10,480,10,430,0,50,500,30,30,220,30,30,30,40,20,40,10,630,30,40,20,40,20,40,30,30,30,40,30,500,20,40,30,30,30,290,20,490,10,40,20,230,30]}
```




