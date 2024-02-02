# Terraform & AWS: Hosting a Static Web App w/ an S3 Bucket (Deploy with Ease)

## Prerequisites

### Installation

Install however you prefer, b

1. Install [VSCodium](https://vscodium.com/) or [VSCode](https://code.visualstudio.com/).
2. Install [Terraform](https://developer.hashicorp.com/terraform/install).
3. Install [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html).
4. Install [Node.js](https://nodejs.org/en/download).
5. Ensure that these are installed and available in the Terminal:

```shell
code -v
terraform -v
aws --v
node -v
```

You should see the current versions of these installed as an output.

### Acquiring AWS Access and Secret keys

1. Follow this guide to [create an AWS Access and Secret keys](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html#Using_CreateAccessKey) on AWS Console.
2. Follow this guide to [add your AWS keys to your AWS CLI](https://docs.aws.amazon.com/cli/latest/reference/configure/#examples).

Store these keys in a secure location. This is your authentication for your identity on AWS!

## Terraform

1. Create a `local.auto.tfvars` file from the [local.auto.tfvars.example](./local.auto.tfvars.example) file.
2. Add your preferred AWS Region here as a string.
3. In your Terminal, ensure you are in the repo directory, then run in order:

```hcl
terraform init
```

This will initialize your Terraform and download the correct files after scanning your Terraform code.

```hcl
terraform plan
```

This will show you the services and architecture that you are instructing Terraform to build in your code.

```hcl
terraform apply
```

> **Note:** If you deploy a Cloudfront CDN (commented out by default), it may take 3-4 minutes to build in your Terminal.

This will apply your changes to AWS after you confirm the selection.

**Go to the URL that was output. It should point to the new bucket you created!**

Now, in your Terminal, ensure you are deleting your test services with:

```hcl
terraform destroy
```

This will destroy all of your AWS architecture that is stored in your Terraform [terraform.tfstate](./terraform.tfstate) file.

> **Note:** If you created any services in AWS in the console, or anything not tracked within your [terraform.tfstate](./terraform.tfstate) file, these resources will not be deleted with Terraform.
