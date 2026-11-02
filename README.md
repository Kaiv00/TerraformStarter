# Terraform Infrastructure Starter 🚀

A lightweight, zero-cost Terraform project designed to demonstrate core infrastructure-as-code concepts (variables, validation, local providers, outputs, and reusable modules) without requiring any cloud subscription.

## Features

- **Local Simulation:** Uses `hashicorp/local` and `hashicorp/random` providers to simulate provisioning clusters and generating configuration files locally.
- **Input Validation:** Enforces allowed environment names (`dev`, `staging`, `prod`) using custom validation rules.
- **Modular Design:** Uses a local module (`modules/server_cluster`) to encapsulate configuration logic.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads) installed (v1.5+ recommended).

## How to Run & Validate

1. **Initialize Terraform** (downloads required local/random providers):
   ```bash
   terraform init