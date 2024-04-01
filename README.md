# elasticsearch-terraform

Starter terraform script to deploy an Elasticsearch cluster in [Elastic Cloud](https://cloud.elastic.co)

## Steps

### 1. Create Elastic Cloud account

1. Create an Elastic Cloud account if you don't already have one [here](https://cloud.elastic.co/registration)
2. You can either provide your personal email or create one from any of the cloud marketplace (AWS, Azure, GCP) to get a free 14-day trial
3. Once created, go [here](https://cloud.elastic.co/account/keys) to create an API key. Download/save the API key as you will need it later

### 2. Configuration

1. **secret.tfvars**: This should contain the API key that you've created in the previous step
2. **variables.tf**: This file contains base variables for getting your Deployment up and running. Modify according to your needs
3. **config.tf**: Terraform provider configuration. 
   - Get the latest version for the Elastic Cloud provider [here](https://registry.terraform.io/providers/elastic/ec/latest/docs)
   - Get the latest version for the Elastic stack provider [here](https://registry.terraform.io/providers/elastic/elasticstack/latest/docs)
4. **elastic-cloud.tf**: Configuration for your deployment. Modify according to your needs.

### 3. Setup & Run

1. `terraform init -upgrade` will download the latest versions of the providers or upgrade them if it already exists and needs upgrading
2. `terraform apply -var-file="secret.tfvars"` to deploy the cluster to Elastic Cloud

### 4. Destroy resources

1. `terraform destroy -var-file="secret.tfvars"` to remove your deployment

### 5. Advanced topics

TBA
