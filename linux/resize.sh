#!/bin/bash

VBoxManage modifyhd <vdi文件路径> --resize 51200 #<单位:M>

#VBoxManage  modifyhd "d:\Users\admas\VirtualBox VMs\192.168.110.215\192.168.110.215-disk1.vdi" --resize 51200