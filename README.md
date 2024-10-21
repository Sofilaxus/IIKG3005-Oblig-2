# IIKG3005 - Infrastructure as Code

## Table of Contents
- [Specifications](#specifications)
- [Scipts](#scripts)
- [Dependencies](#dependencies)
- [Sample](#sample)
- [Environments](#environments)
- [Results](#results)

## Specifications

In the assingent we were presented with three file structure options. 

I decided to go with Alternative One for my Terraform Azure project folder structure, and I think it has some solid advantages. First off, it scales really well with separate folders for different environments like dev, staging, and prod, which helps keep everything organized as the project grows. The way it separates infrastructure components into reusable modules in the modules/ directory also makes it easier to manage and update things without getting tangled up.

Plus, having a specific setup for each environment means I can maintain them independently, making rollbacks and debugging less of a headache. It also simplifies my CI/CD pipelines since I can target specific folders for checks and processes, ensuring everything stays consistent across environments. Overall, this structure feels like a good fit for keeping everything manageable and flexible as I expand the project.

This is how the project strucutre looks like:

```
azure-terraform-project/
│
├── modules/
│   ├── networking/
│   ├── app_service/
│   ├── database/
│   ├── storage/
│   └── nn/
│
├── environments/
│   ├── dev/
│   │   ├── core_infrastructure/
│   │   │   ├── main.tf
│   │   │   ├── variables.tf
│   │   │   ├── outputs.tf
│   │   │   └── terraform.tfvars
│   │   ├── application_platform/
│   │   │   ├── main.tf
│   │   │   ├── variables.tf
│   │   │   ├── outputs.tf
│   │   │   └── terraform.tfvars
│   │   └── nn-deployment/
│   │       ├── main.tf
│   │       ├── variables.tf
│   │       ├── outputs.tf
│   │       └── terraform.tfvars
│   │
│   ├── staging/
│   │   ├── core_infrastructure/
│   │   │   ├── main.tf
│   │   │   ├── variables.tf
│   │   │   ├── outputs.tf
│   │   │   └── terraform.tfvars
│   │   ├── application_platform/
│   │   │   ├── main.tf
│   │   │   ├── variables.tf
│   │   │   ├── outputs.tf
│   │   │   └── terraform.tfvars
│   │   └── nn-deployment/
│   │       ├── main.tf
│   │       ├── variables.tf
│   │       ├── outputs.tf
│   │       └── terraform.tfvars
│   │
│   └── prod/
│       ├── core_infrastructure/
│       │   ├── main.tf
│       │   ├── variables.tf
│       │   ├── outputs.tf
│       │   └── terraform.tfvars
│       ├── application_platform/
│       │   ├── main.tf
│       │   ├── variables.tf
│       │   ├── outputs.tf
│       │   └── terraform.tfvars
│       └── nn-deployment/
│           ├── main.tf
│           ├── variables.tf
│           ├── outputs.tf
│           └── terraform.tfvars
│
├── global/
│   └── main.tf
│
├── variables.tf
├── outputs.tf
└── README.md
```

## Scripts

## Dependencies

## Sample

## Environments

## Results