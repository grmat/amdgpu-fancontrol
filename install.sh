#! /bin/bash

#Intentionally overwrites old script
cp amdgpu-fancontrol /usr/bin/


#Won't overwrite existing config file
cp -n amdgpu-fancontrol.cfg /etc/amdgpu-fancontrol.cfg


#Copy the service to the right place
cp amdgpu-fancontrol.service /etc/systemd/system/

#Start the service on boot
systemctl enable amdgpu-fancontrol


#You can check the status of the service with "systemctl status amdgpu-fancontrol"
