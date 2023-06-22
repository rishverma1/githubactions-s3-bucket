#!/bin/bash

aws ec2 run-instances \
    --image-id ami-022e1a32d3f742bd8 \
    --count 1 \
    --instance-type t2.micro \
    --key-name githbactions-key \
    --security-group-ids sg-0ac7c6ba0069b099c \
    --subnet-id subnet-010062032777ab1f9 \
    --block-device-mappings "[{\"DeviceName\":\"/dev/sdf\",\"Ebs\":{\"VolumeSize\":30,\"DeleteOnTermination\":false}}]" \
    --tag-specifications 'ResourceType=instance,Tags=[{Key=Name,Value=demo-server}]' 'ResourceType=volume,Tags=[{Key=Name,Value=demo-server-disk}]'