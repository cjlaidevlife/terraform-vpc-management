# Terraform AWS VPC Management

Manage AWS VPC with Terraform Module Composition.

# Requirement

1. Terraform v1.10.0 above
2. Terraform AWS Provider v5.0 above
3. (Optional) Terraform-Docs v0.18.0
4. (Optional) tfenv v3.0.0 


> [!NOTE]  
> These requirements represent the current specifications we are using. Tools below this version may be available for trial, but we have not tested them. If you have any questions or concerns, we can discuss them together.

# Project Structure

This document outlines the structure of the Terraform project, providing an overview of the directories and their purposes.

## 1. Root Directory

The root directory contains the main configuration files and serves as the entry point for the Terraform project. It typically includes:

* `LICENSE`: Contains the licensing information for the project.
* `README.md`: Provides an overview and documentation for the project.
* `src`: This directory contains all the Terraform configuration files necessary for deploying the infrastructure.

## 2. Code Directory(Terraform Root Module)

The code directory is where the main Terraform configuration files are organized. This directory may contain subdirectories for different local child modules of the infrastructure.

The files prefixed with "main" are used to identify and manage the resources within the root module of the Terraform configuration. Each of these files serves a specific purpose in defining various components of the infrastructure:


1. `main.tf`: This is the primary configuration file for the root module, where the overall infrastructure resources are defined and orchestrated.
2. `main_*.tf`: This file contains the configuration that call child modules.
3. `modules`: This directory contains all the necessary Terraform local child module files required for deploying the infrastructure.

These "main" files collectively contribute to the organization and management of the root module, ensuring that the infrastructure is defined clearly and efficiently.

## 3. Modules Directory(Terraform Local Child Modules)

The modules directory is used to store reusable Terraform modules. Each module should be organized in its own subdirectory, allowing for better code reuse and modularity.For example:

```bash
tree src/modules/
src/modules/
├── igw
│   ├── README.md
│   └── main.tf
├── route_tables
│   ├── README.md
│   └── main.tf
├── subnet
│   ├── README.md
│   └── main.tf
└── vpc
    ├── README.md
    └── main.tf

5 directories, 8 files
```