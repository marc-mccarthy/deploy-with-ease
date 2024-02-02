# Deploy with Ease: A Beginner's Workshop on Terraform and AWS for React Applications

Here is all the source code for this workshop to be used alongside the lecture.

- [Application Source Code](./useragent)
- [Terraform Source Code](./terraform)

## Event Details

### Date: January 29th, 2024

### Time: 5:30pm - 9:30pm CST

### Instructor: Marc McCarthy

### Event Link: [Deploy with Ease: A Beginner's Workshop on Terraform & AWS for React Applications](https://www.eventbrite.com/e/deploy-with-ease-beginners-workshop-on-terraform-aws-for-react-websites-tickets-793500520417)

### Repo Link: [marc-mccarthy/deploy-with-ease](https://github.com/marc-mccarthy/deploy-with-ease)

## Setup

### Homebrew Installation (macOS Users)

- [Homebrew](https://brew.sh/) - The Missing Package Manager for macOS.

```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

- Check version to ensure CLI access:

```zsh
brew -v
```

### Installing Development Tools

- [Node.js](https://nodejs.org/): JavaScript runtime built on Chrome's V8 JavaScript engine.
- [AWS CLI](https://aws.amazon.com/cli/): Command-line tool for managing AWS services.
- [Visual Studio Code](https://code.visualstudio.com/): Source-code editor made by Microsoft for Windows, Linux, and macOS.
- [Terraform](https://www.terraform.io/downloads.html): Infrastructure as Code tool for building, changing, and versioning infrastructure safely and efficiently.
  
```zsh
brew install node
brew install awscli
brew install visual-studio-code
brew install terraform
```

...or

```zsh
brew install node awscli visual-studio-code terraform
```

- Check versions to ensure installation and CLI access.

```zsh
node -v
npm -v
aws --v
code -v
terraform -v
```

### Creating AWS Account

[AWS Account Creation](https://portal.aws.amazon.com/billing/signup) - Sign up for an Amazon Web Services account.

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

This will apply your changes to AWS after you confirm the selection.

**Go to the URL that was output. It should point to the new bucket you created!**

Now, in your Terminal, ensure you are deleting your test services with:

```hcl
terraform destroy
```

This will destroy all of your AWS architecture that is stored in your Terraform [terraform.tfstate](./terraform.tfstate) file.

### Cloudfront CDN

AWS CloudFront is a Content Delivery Network (CDN) service by Amazon Web Services. Its primary purpose is to accelerate the delivery of static and dynamic web content by caching it at edge locations closer to end-users.

By providing low latency and high transfer speeds globally, It supports the delivery of various content types, including images, videos, and APIs.

1. Go to the [cloudfront.tf](./terraform/cloudfront.tf) file and uncomment all the code.
2. Go to the [outputs.tf](./terraform/outputs.tf) file and uncomment the Cloudfront CDN URL.
3. Run all the Terraform commands again. Building the Cloudfront CDN may take 3-4 minutes.
4. You should now see a new URL that is present as an output and will take you to your application.
5. Destroy your test resources!

## Security

We will be experimenting with a lot of services today, so for simplicity's sake, use whichever account you feel most comfortable with. Root does have it's security issues if used in production. You may incur costs if you leave services running.

> **Note:** If you created any services in AWS in the console, or anything not tracked within your [terraform.tfstate](./terraform.tfstate) file, these resources will not be deleted with Terraform.
