# Switch to Development profile
Set-AWSCredential -StoredCredentials Development

# Now we're going to proceed with the process of creating a VPC. 
$VPC = New-EC2Vpc -CidrBlock '192.168.0.0/16'
$VPC.VpcId

# Proceed with creating a subnet
# Now creating our subnet
$Subnet1a = New-EC2Subnet -VpcId $VPC.VpcId -CidrBlock '192.168.2.0/24' -AvailabilityZone 'us-east-1a'

# To list the subnets use the following commands:
$VPCFilter = New-Object Amazon.EC2.Model.Filter
$VPCFilter.Name = 'vpc-id'
$VPCFilter.Value = $VPC.VpcId
Get-EC2Subnet -Filter $VPCFilter 


# To remove the subnet use:
Remove-EC2Subnet -SubnetId $Subnet1a -Force

# Now we're going to proceed with the process of creating the IGW.
$InternetGateway = New-EC2InternetGateway
Add-EC2InternetGateway -InternetGatewayId $InternetGateway.InternetGatewayId -VpcId $VPC.VpcId
