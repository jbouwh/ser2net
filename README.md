# ser2net
Provides docker images jbouwh/ser2net for use as DSRM to tcp adapter.

The docker images are based on debian buster and are generated for all platforms at Dockerhub jbouwh/ser2net

The image has a default configuration file included that exposes tcp port `3333` and binds `/dev/tty/USB0` with baudrate of `115200`, `1` stopbit no parity and `8` databits.
This version of ser2net allows multiple simultaneous tcp connections (3 max).

To override the config file bind it to `/etc/ser2net.conf`.

This version of ser2net is customized to use with a generic DSMR (Slimme Meter) P1 to USB adapter.

The tcp port can be used with the dsmr integration of Home Assistant or Omnikdatalogger
