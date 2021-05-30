# ec2_metadata
EC2 Metadata in JSON format using the "go" language

**run the "ec2_metadata.go" file from the any AWS EC2 instance to get the metadata in JSON format.
**

root@ip-172-31-36-145:/home/ubuntu/wipro/ec2_metadata# **go run ec2_metadata.go --prettyprint**

{
  "ami-id": "ami-0a9e98c890b11cb9c",
  "ami-launch-index": "0",
  "ami-manifest-path": "(unknown)",
  "block-device-mapping": {
    "ami": "/dev/sda1",
    "root": "/dev/sda1"
  },
  "events": {
    "maintenance": {
      "history": "[]",
      "scheduled": "[]"
    }
  },
  "hibernation": {
    "configured": "false"
  },
  "hostname": "ip-172-31-36-145.ec2.internal",
  "identity-credentials": {
    "ec2": {
      "info": "{",
      "security-credentials": {
        "ec2-instance": "{"
      }
    }
  },
  "instance-action": "none",
  "instance-id": "i-09252c28a602877a3",
  "instance-life-cycle": "on-demand",
  "instance-type": "t2.medium",
  "local-hostname": "ip-172-31-36-145.ec2.internal",
  "local-ipv4": "172.31.36.145",
  "mac": "0e:d7:79:31:af:03",
  "network": {
    "interfaces": {
      "macs": {
        "0e:d7:79:31:af:03": {
          "device-number": "0",
          "interface-id": "eni-0a1c0dd7e1db85cc7",
          "ipv4-associations": {
            "18.207.229.107": "172.31.36.145"
          },
          "local-hostname": "ip-172-31-36-145.ec2.internal",
          "local-ipv4s": "172.31.36.145",
          "mac": "0e:d7:79:31:af:03",
          "owner-id": "026598360742",
          "public-hostname": "ec2-18-207-229-107.compute-1.amazonaws.com",
          "public-ipv4s": "18.207.229.107",
          "security-group-ids": "sg-092313ff5f0d450c3",
          "security-groups": "launch-wizard-2",
          "subnet-id": "subnet-df1dbe82",
          "subnet-ipv4-cidr-block": "172.31.32.0/20",
          "vpc-id": "vpc-833c43fb",
          "vpc-ipv4-cidr-block": "172.31.0.0/16",
          "vpc-ipv4-cidr-blocks": "172.31.0.0/16"
        }
      }
    }
  },
  "placement": {
    "availability-zone": "us-east-1d",
    "availability-zone-id": "use1-az6",
    "region": "us-east-1"
  },
  "profile": "default-hvm",
  "public-hostname": "ec2-18-207-229-107.compute-1.amazonaws.com",
  "public-ipv4": "18.207.229.107",
  "public-keys": {
    "0=test_ecs": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCWhl0cqSCJ1M5sRnJlo1UFaLdIGfkUy9vEGnkjyOzv9Vc+S8sfh71Z27bMFAMOwE90hkQo2dRhwjYCIruiU4r0pPmQt8Tcp8AqS5DSjqY8Dpmj37vkhFge7u8MBadw8yWVLOJtYjMcpZVIz8acx2OPHaXWbnjBJSMmhZ/XWuZt7HFQSS1+0vqT3C8UUGE0w9/z2lrU+FnFYvKj8wCg7PQTAON5IBbx3qvWbS4aMUvaqDmZM7+MtDo8YdjuAoVEgEfkam12CQqw4NLFuse0IayyELUaZR0VDYXeXlMa+ilxEGxMe4ocPFRgqrwzNc5H4QlMgi1/3NfJldKKLWt0DGU7 test_ecs"
  },
  "reservation-id": "r-006caee0f4f2e1934",
  "security-groups": "launch-wizard-2",
  "services": {
    "domain": "amazonaws.com",
    "partition": "aws"
  }
}

{
  "ami-id": "ami-0a9e98c890b11cb9c",
  "ami-launch-index": "0",
  "ami-manifest-path": "(unknown)",
  "block-device-mapping": {
    "ami": "/dev/sda1",
    "root": "/dev/sda1"
  },
  "events": {
    "maintenance": {
      "history": "[]",
      "scheduled": "[]"
    }
  },
  "hibernation": {
    "configured": "false"
  },
  "hostname": "ip-172-31-36-145.ec2.internal",
  "identity-credentials": {
    "ec2": {
      "info": "{",
      "security-credentials": {
        "ec2-instance": "{"
      }
    }
  },
  "instance-action": "none",
  "instance-id": "i-09252c28a602877a3",
  "instance-life-cycle": "on-demand",
  "instance-type": "t2.medium",
  "local-hostname": "ip-172-31-36-145.ec2.internal",
  "local-ipv4": "172.31.36.145",
  "mac": "0e:d7:79:31:af:03",
  "network": {
    "interfaces": {
      "macs": {
        "0e:d7:79:31:af:03": {
          "device-number": "0",
          "interface-id": "eni-0a1c0dd7e1db85cc7",
          "ipv4-associations": {
            "18.207.229.107": "172.31.36.145"
          },
          "local-hostname": "ip-172-31-36-145.ec2.internal",
          "local-ipv4s": "172.31.36.145",
          "mac": "0e:d7:79:31:af:03",
          "owner-id": "026598360742",
          "public-hostname": "ec2-18-207-229-107.compute-1.amazonaws.com",
          "public-ipv4s": "18.207.229.107",
          "security-group-ids": "sg-092313ff5f0d450c3",
          "security-groups": "launch-wizard-2",
          "subnet-id": "subnet-df1dbe82",
          "subnet-ipv4-cidr-block": "172.31.32.0/20",
          "vpc-id": "vpc-833c43fb",
          "vpc-ipv4-cidr-block": "172.31.0.0/16",
          "vpc-ipv4-cidr-blocks": "172.31.0.0/16"
        }
      }
    }
  },
  "placement": {
    "availability-zone": "us-east-1d",
    "availability-zone-id": "use1-az6",
    "region": "us-east-1"
  },
  "profile": "default-hvm",
  "public-hostname": "ec2-18-207-229-107.compute-1.amazonaws.com",
  "public-ipv4": "18.207.229.107",
  "public-keys": {
    "0=test_ecs": "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCWhl0cqSCJ1M5sRnJlo1UFaLdIGfkUy9vEGnkjyOzv9Vc+S8sfh71Z27bMFAMOwE90hkQo2dRhwjYCIruiU4r0pPmQt8Tcp8AqS5DSjqY8Dpmj37vkhFge7u8MBadw8yWVLOJtYjMcpZVIz8acx2OPHaXWbnjBJSMmhZ/XWuZt7HFQSS1+0vqT3C8UUGE0w9/z2lrU+FnFYvKj8wCg7PQTAON5IBbx3qvWbS4aMUvaqDmZM7+MtDo8YdjuAoVEgEfkam12CQqw4NLFuse0IayyELUaZR0VDYXeXlMa+ilxEGxMe4ocPFRgqrwzNc5H4QlMgi1/3NfJldKKLWt0DGU7 test_ecs"
  },
  "reservation-id": "r-006caee0f4f2e1934",
  "security-groups": "launch-wizard-2",
  "services": {
    "domain": "amazonaws.com",
    "partition": "aws"
  }
}

