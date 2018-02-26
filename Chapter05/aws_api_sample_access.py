#!/usr/bin/python

import boto
from boto import ec2
ec2 = boto.ec2.connect_to_region('us-west-2', profile_name='default')
response = ec2.get_all_instances()
instances = [i for r in reservations for i in r.instances]
for i in instances:
    print (i)
