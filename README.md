AWS Tested OSes
============
This module returns for an given OS the AMI aswell as its default user and the prerequisits script

EXAMPLE
-------
```hcl
module "dcos-tested-oses" {
  source  = "terraform-dcos/tested-oses/aws"
  version = "~> 0.2.0"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| aws\_ami | AMI that will be used for the instances instead of the Mesosphere chosen default images. Custom AMIs must fulfill the Mesosphere DC/OS system-requirements: See https://docs.mesosphere.com/1.12/installing/production/system-requirements/ | map | `{ "centos_7.2_ap-northeast-1": "ami-eec1c380", "centos_7.2_ap-northeast-2": "ami-c74789a9", "centos_7.2_ap-south-1": "ami-95cda6fa", "centos_7.2_ap-southeast-1": "ami-f068a193", "centos_7.2_ap-southeast-2": "ami-fedafc9d", "centos_7.2_ca-central-1": "ami-af62d0cb", "centos_7.2_eu-central-1": "ami-9bf712f4", "centos_7.2_eu-west-1": "ami-7abd0209", "centos_7.2_eu-west-2": "ami-bb373ddf", "centos_7.2_sa-east-1": "ami-26b93b4a", "centos_7.2_us-east-1": "ami-6d1c2007", "centos_7.2_us-east-2": "ami-6a2d760f", "centos_7.2_us-west-1": "ami-af4333cf", "centos_7.2_us-west-2": "ami-d2c924b2", "centos_7.3_ap-northeast-1": "ami-29d1e34e", "centos_7.3_ap-northeast-2": "ami-08e93466", "centos_7.3_ap-south-1": "ami-3c0e7353", "centos_7.3_ap-southeast-1": "ami-7d2eab1e", "centos_7.3_ap-southeast-2": "ami-34171d57", "centos_7.3_ca-central-1": "ami-28823e4c", "centos_7.3_eu-central-1": "ami-fa2df395", "centos_7.3_eu-west-1": "ami-061b1560", "centos_7.3_eu-west-2": "ami-e05a4d84", "centos_7.3_sa-east-1": "ami-b31a75df", "centos_7.3_us-east-1": "ami-46c1b650", "centos_7.3_us-east-2": "ami-18f8df7d", "centos_7.3_us-west-1": "ami-f5d7f195", "centos_7.3_us-west-2": "ami-f4533694", "centos_7.4_ap-northeast-1": "ami-1b27a37d", "centos_7.4_ap-northeast-2": "ami-53a1073d", "centos_7.4_ap-south-1": "ami-82a3eaed", "centos_7.4_ap-southeast-1": "ami-a6e88dda", "centos_7.4_ap-southeast-2": "ami-5b778339", "centos_7.4_ca-central-1": "ami-161ea572", "centos_7.4_eu-central-1": "ami-1e038d71", "centos_7.4_eu-west-1": "ami-147fc16d", "centos_7.4_eu-west-2": "ami-c8d7c9ac", "centos_7.4_eu-west-3": "ami-0c60d771", "centos_7.4_sa-east-1": "ami-284d0a44", "centos_7.4_us-east-1": "ami-02e98f78", "centos_7.4_us-east-2": "ami-2d103948", "centos_7.4_us-west-1": "ami-b1a59fd1", "centos_7.4_us-west-2": "ami-02c71d7a", "centos_7.5_ap-northeast-1": "ami-8e8847f1", "centos_7.5_ap-northeast-2": "ami-bf9c36d1", "centos_7.5_ap-south-1": "ami-1780a878", "centos_7.5_ap-southeast-1": "ami-8e0205f2", "centos_7.5_ap-southeast-2": "ami-d8c21dba", "centos_7.5_ca-central-1": "ami-e802818c", "centos_7.5_eu-central-1": "ami-dd3c0f36", "centos_7.5_eu-west-1": "ami-3548444c", "centos_7.5_eu-west-2": "ami-00846a67", "centos_7.5_eu-west-3": "ami-262e9f5b", "centos_7.5_sa-east-1": "ami-cb5803a7", "centos_7.5_us-east-1": "ami-9887c6e7", "centos_7.5_us-east-2": "ami-9c0638f9", "centos_7.5_us-west-1": "ami-4826c22b", "centos_7.5_us-west-2": "ami-3ecc8f46", "centos_7.6_ap-northeast-1": "ami-045f38c93733dd48d", "centos_7.6_ap-northeast-2": "ami-06cf2a72dadf92410", "centos_7.6_ap-south-1": "ami-02e60be79e78fef21", "centos_7.6_ap-southeast-1": "ami-0b4dd9d65556cac22", "centos_7.6_ap-southeast-2": "ami-08bd00d7713a39e7d", "centos_7.6_ca-central-1": "ami-033e6106180a626d0", "centos_7.6_eu-central-1": "ami-04cf43aca3e6f3de3", "centos_7.6_eu-north-1": "ami-5ee66f20", "centos_7.6_eu-west-1": "ami-0ff760d16d9497662", "centos_7.6_eu-west-2": "ami-0eab3a90fc693af19", "centos_7.6_eu-west-3": "ami-0e1ab783dc9489f34", "centos_7.6_sa-east-1": "ami-0b8d86d4bf91850af", "centos_7.6_us-east-1": "ami-02eac2c0129f6376b", "centos_7.6_us-east-2": "ami-0f2b4fc905b0bd1f1", "centos_7.6_us-west-1": "ami-074e2d6769f445be5", "centos_7.6_us-west-2": "ami-01ed306a12b7d1c96", "coreos_1235.9.0_ap-northeast-1": "ami-885f19ef", "coreos_1235.9.0_ap-northeast-2": "ami-d65889b8", "coreos_1235.9.0_ap-south-1": "ami-7e641511", "coreos_1235.9.0_ap-southeast-1": "ami-14cc7877", "coreos_1235.9.0_ap-southeast-2": "ami-d92422ba", "coreos_1235.9.0_ca-central-1": "ami-c8c67bac", "coreos_1235.9.0_eu-central-1": "ami-9501c8fa", "coreos_1235.9.0_eu-west-1": "ami-188dd67e", "coreos_1235.9.0_eu-west-2": "ami-054c5961", "coreos_1235.9.0_sa-east-1": "ami-3e5d3952", "coreos_1235.9.0_us-east-1": "ami-fd6c94eb", "coreos_1235.9.0_us-east-2": "ami-72032617", "coreos_1235.9.0_us-west-1": "ami-b6bae7d6", "coreos_1235.9.0_us-west-2": "ami-4c49f22c", "coreos_1465.8.0_ap-northeast-1": "ami-e98c458f", "coreos_1465.8.0_ap-northeast-2": "ami-2d7ca743", "coreos_1465.8.0_ap-south-1": "ami-d18dcbbe", "coreos_1465.8.0_ap-southeast-1": "ami-3f5b2d5c", "coreos_1465.8.0_ap-southeast-2": "ami-b02accd2", "coreos_1465.8.0_ca-central-1": "ami-e899208c", "coreos_1465.8.0_eu-central-1": "ami-e1d9688e", "coreos_1465.8.0_eu-west-1": "ami-1a589463", "coreos_1465.8.0_eu-west-2": "ami-6cc6d508", "coreos_1465.8.0_sa-east-1": "ami-42ff822e", "coreos_1465.8.0_us-east-1": "ami-e2d33d98", "coreos_1465.8.0_us-east-2": "ami-5ab7953f", "coreos_1465.8.0_us-west-1": "ami-a57d4cc5", "coreos_1465.8.0_us-west-2": "ami-82bd41fa", "coreos_1576.5.0_ap-northeast-1": "ami-ffae3799", "coreos_1576.5.0_ap-northeast-2": "ami-c0bf1fae", "coreos_1576.5.0_ap-south-1": "ami-f0f5a19f", "coreos_1576.5.0_ap-southeast-1": "ami-bac5b5c6", "coreos_1576.5.0_ap-southeast-2": "ami-628f7200", "coreos_1576.5.0_ca-central-1": "ami-59f97c3d", "coreos_1576.5.0_eu-central-1": "ami-b08210df", "coreos_1576.5.0_eu-west-1": "ami-901484e9", "coreos_1576.5.0_eu-west-2": "ami-68b8a00c", "coreos_1576.5.0_eu-west-3": "ami-8702b5fa", "coreos_1576.5.0_sa-east-1": "ami-053b7969", "coreos_1576.5.0_us-east-1": "ami-b5742acf", "coreos_1576.5.0_us-east-2": "ami-e9a48f8c", "coreos_1576.5.0_us-west-1": "ami-27878747", "coreos_1576.5.0_us-west-2": "ami-1d7fcb65", "coreos_1855.5.0_ap-northeast-1": "ami-0a8c6be5f87b35dd4", "coreos_1855.5.0_ap-northeast-2": "ami-0cac5781f008b2bda", "coreos_1855.5.0_ap-south-1": "ami-0cd820071bc8b5305", "coreos_1855.5.0_ap-southeast-1": "ami-00aa99ecc25144574", "coreos_1855.5.0_ap-southeast-2": "ami-008d71c75e5ae947c", "coreos_1855.5.0_ca-central-1": "ami-07d53410c0f2b0132", "coreos_1855.5.0_eu-central-1": "ami-09699c9a5df9e662b", "coreos_1855.5.0_eu-west-1": "ami-07c86c6e70759b682", "coreos_1855.5.0_eu-west-2": "ami-074e993e6c24f801b", "coreos_1855.5.0_eu-west-3": "ami-09cb56d44bcbdde4b", "coreos_1855.5.0_sa-east-1": "ami-01b155f0246dad1a8", "coreos_1855.5.0_us-east-1": "ami-0bb5afc82c391abb7", "coreos_1855.5.0_us-east-2": "ami-068b76746d50afb12", "coreos_1855.5.0_us-west-1": "ami-07d8f0cf1498b72f4", "coreos_1855.5.0_us-west-2": "ami-0884a563b7da04715", "coreos_835.13.0_ap-northeast-1": "ami-02c9c86c", "coreos_835.13.0_ap-southeast-1": "ami-00a06963", "coreos_835.13.0_ap-southeast-2": "ami-949abdf7", "coreos_835.13.0_eu-central-1": "ami-15190379", "coreos_835.13.0_eu-west-1": "ami-2a1fad59", "coreos_835.13.0_sa-east-1": "ami-c40784a8", "coreos_835.13.0_us-east-1": "ami-7f3a0b15", "coreos_835.13.0_us-west-1": "ami-a8aedfc8", "coreos_835.13.0_us-west-2": "ami-4f00e32f", "rhel_7.3_ap-northeast-1": "ami-5c9a933b", "rhel_7.3_ap-northeast-2": "ami-908f50fe", "rhel_7.3_ap-south-1": "ami-29bdc246", "rhel_7.3_ap-southeast-1": "ami-cb981aa8", "rhel_7.3_ap-southeast-2": "ami-9a3322f9", "rhel_7.3_ca-central-1": "ami-14e65970", "rhel_7.3_eu-central-1": "ami-0e258161", "rhel_7.3_eu-west-1": "ami-f1978897", "rhel_7.3_eu-west-2": "ami-40a8bf24", "rhel_7.3_sa-east-1": "ami-5f2f4433", "rhel_7.3_us-east-1": "ami-9e2f0988", "rhel_7.3_us-east-2": "ami-11aa8c74", "rhel_7.3_us-west-1": "ami-e69ebc86", "rhel_7.3_us-west-2": "ami-b55a51cc", "rhel_7.4_ap-northeast-1": "ami-36f09350", "rhel_7.4_ap-northeast-2": "ami-90a201fe", "rhel_7.4_ap-south-1": "ami-5c2f7e33", "rhel_7.4_ap-southeast-1": "ami-8d90e9f1", "rhel_7.4_ap-southeast-2": "ami-e1996783", "rhel_7.4_ca-central-1": "ami-71018415", "rhel_7.4_eu-central-1": "ami-8a21bfe5", "rhel_7.4_eu-west-1": "ami-ccb7d2b5", "rhel_7.4_eu-west-2": "ami-b4b3a8d0", "rhel_7.4_eu-west-3": "ami-66d0661b", "rhel_7.4_sa-east-1": "ami-1a064a76", "rhel_7.4_us-east-1": "ami-76a3970c", "rhel_7.4_us-east-2": "ami-cebe94ab", "rhel_7.4_us-west-1": "ami-c8020fa8", "rhel_7.4_us-west-2": "ami-1607ba6e", "rhel_7.5_ap-northeast-1": "ami-0b517025bb2f0ad4a", "rhel_7.5_ap-northeast-2": "ami-0d226f15e3e46903a", "rhel_7.5_ap-south-1": "ami-0aa4317636e016115", "rhel_7.5_ap-southeast-1": "ami-09fc728e15fbfb535", "rhel_7.5_ap-southeast-2": "ami-0a61d60bde3940420", "rhel_7.5_ca-central-1": "ami-fc20ad98", "rhel_7.5_eu-central-1": "ami-05ba90b00a46d83fa", "rhel_7.5_eu-north-1": "ami-5c39b622", "rhel_7.5_eu-west-1": "ami-092acf20fad7f7795", "rhel_7.5_eu-west-2": "ami-0ac5fae255ddac6f6", "rhel_7.5_eu-west-3": "ami-039346fed23fb53ad", "rhel_7.5_sa-east-1": "ami-01c56172f9db84834", "rhel_7.5_us-east-1": "ami-0394fe9914b475c53", "rhel_7.5_us-east-2": "ami-0376bbf9be9eac670", "rhel_7.5_us-west-1": "ami-0bdc0ff10fb093057", "rhel_7.5_us-west-2": "ami-096510cab1b6b2c6d", "rhel_7.6_ap-northeast-1": "ami-0e3e6ca71a19ccf06", "rhel_7.6_ap-northeast-2": "ami-0f84aff229263c1fc", "rhel_7.6_ap-south-1": "ami-0b105c57e305d9064", "rhel_7.6_ap-southeast-1": "ami-031290b4bd9eaa715", "rhel_7.6_ap-southeast-2": "ami-06d2821bfc76dcda3", "rhel_7.6_ca-central-1": "ami-0a43efe505004e592", "rhel_7.6_eu-central-1": "ami-0fc86555914f6a9f2", "rhel_7.6_eu-north-1": "ami-8833bbf6", "rhel_7.6_eu-west-1": "ami-04c89a19fea29f1f0", "rhel_7.6_eu-west-2": "ami-06fe0c124aedcef5f", "rhel_7.6_eu-west-3": "ami-08295de7534115935", "rhel_7.6_sa-east-1": "ami-06efd558d6a5fb959", "rhel_7.6_us-east-1": "ami-08a7d2bfef687328f", "rhel_7.6_us-east-2": "ami-0e166e72fda655c63", "rhel_7.6_us-west-1": "ami-056efb42b219f9abb", "rhel_7.6_us-west-2": "ami-02deb4589e0f0d95e" }` | no |
| aws\_default\_os\_user | Map OS name to default login user (e.g. centos -> centos, coreos -> coreos) | map | `{ "centos": "centos", "coreos": "core", "rhel": "ec2-user", "ubuntu": "ubuntu" }` | no |
| os | Operating system to use | string | `"centos_7.6"` | no |
| provider | Provider to use | string | `"aws"` | no |
| region | region | string | `""` | no |

## Outputs

| Name | Description |
|------|-------------|
| aws\_ami | AMI that will be used for the instances instead of the Mesosphere chosen default images. Custom AMIs must fulfill the Mesosphere DC/OS system-requirements: See https://docs.mesosphere.com/1.12/installing/production/system-requirements/ |
| os-setup | os-setup |
| user | User |

