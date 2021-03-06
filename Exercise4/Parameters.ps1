﻿$OctopusParameters = @{}

# Octopus parameters
$OctopusParameters['ResourcePrefix'] = 'ab';
$OctopusParameters['Environment'] = "CI";
$OctopusParameters['Version'] = "1.0.0";

# CloudFormation parameters
$OctopusParameters['AWSRegion'] = "us-west-2";
$OctopusParameters['CloudFormationStackName'] = "{0}-sandbox-{1}" -f @($OctopusParameters['ResourcePrefix'], $OctopusParameters['Environment']);
$OctopusParameters['S3BucketName'] = "{0}-sandbox-infrastructure" -f $OctopusParameters['ResourcePrefix'];
$OctopusParameters['VpcId'] = "vpc-a8450bcd";

# AWS parameters
$OctopusParameters['KeyPairName'] = "AwsDayKeyPair";
$OctopusParameters['WebserverImageId'] = "ami-dfccd1ef"; #WINDOWS_2012R2_BASE
$OctopusParameters['WebserverInstanceType'] = "t2.small";
$OctopusParameters['WebserverSubnetIdAzOne'] = "subnet-3a8bf94d"; # Public A
$OctopusParameters['WebserverSubnetIdAzTwo'] = "subnet-0afba76f"; # Public B
$OctopusParameters['LoadBalancerSubnetIdAzOne'] = "subnet-3a8bf94d"; # Public A
$OctopusParameters['LoadBalancerSubnetIdAzTwo'] = "subnet-0afba76f"; # Public B