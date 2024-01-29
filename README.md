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

## Security

We will be experimenting with a lot of services today, so for simplicity's sake, use whichever account you feel most comfortable with. Root does have it's security issues if used in production. You may incur costs if you leave services running.
