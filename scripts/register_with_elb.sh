#!/bin/bash

export AWS_DEFAULT_REGION=us-east-1

instanceID=$(curl http://169.254.169.254/latest/meta-data/instance-id)


aws autoscaling update-auto-scalling-group  --auto-scalling-group-name CDAPP-WSASG-1TYXI3Q18LPYL --health-check-type ELB

aws elb register-instances-with-load-balancer --load-balancer-name CDAPP-ELB-454WHPATJPW0 --instances $instanceID






