![TechSlate](../global/images/ts.png)

# Introduction 

## *This page contains all the Best-Practices of Terraform.*

![DevOps](images/terraform1.png)

# Terraform Best Practices 


## **Practice 1: Host Terraform Code in the Git Repository** ## 

- GitHub is a comprehensive DevOps and collaboration platform which is well known for its version control features.

- By using GitHub for version control and collaboration, operators can better cooperate with application developers throughout the software lifecycle.

- If you are a Terraform user, you should save your configuration files in a Version Control System (VCS).


## **Practice 2: Use .gitignore to exclude Terraform State Files, State Directory Backups, and Core.** ## 

- Always have an a.gitignore file in your repository with all the required rules to ignore unnecessary files by Git. This way, you won’t push files unknowingly.


## **Practice 3: Using a Consistent File Structure** ## 

- Use folders in your project structure when using modules.

- Modules are folders that contain config files that have been created in a way that allows for the code to be reused.

- A README.md file should be included in each repository.

- Create main.tf to call modules, store locals, and data sources to create all the required resources. 

- It’s a good idea to have a provider.tf with provider details.

- Have a variables.tf file where you can store declarations of variables used in main.tf and outputs.tf should contain outputs.


## **Practice 4: Auto Format Terraform Files.** ##           	


- Should we just avoid writing ugly code? After all, we all despise reading it.

- The HashiCorp Terraform language follows the same style guidelines as most other computer languages.

- A single missing bracket or excessive indentation can make your Terraform configuration files difficult to read, maintain, and understand, resulting in a negative experience.

- However, you can use the ‘terraform fmt’ command to repair all code discrepancies at once. Terraform configuration files are rewritten in a consistent structure and style using the ‘terraform fmt’ command.


## **Practice 5: Avoid Hard Coding Resources** ## 

- Its best practice to avoid hard coding resources in Terraform configuration files.  Instead, the values should be placed as variables.

- Its best practice to avoid hard coding resources in Terraform configuration files.  Instead, the values should be placed as variables.


## **Practice 6: Follow Naming Convention** ## 

- Instead of – (dash), use _ (underscore) everywhere (in resource names, data source names, variable names, outputs, etc.).

- Use lowercase letters and numbers whenever possible.

- When it comes to names, single nouns should always be used.

- Use -(dash) inside arguments and in locations where the value will be visible to a human (e.g.:, name of Resource group, name of Storage account) .

## **Practice 7: Use Modules** ## 

  Every Terraform practitioner should employ modules in accordance with the following guidelines:

- Begin writing your setup.

- Organize and encapsulate your code using local modules.

- Find relevant modules by searching the public Terraform Registry. 

- Share modules with your team after they’ve been published.
 


## **Practice 8: Run Terraform Command with var-file.** ## 

- Maintain multiple .tfvars files with the definition of variables so that you can pass the required file with var-file flag to the ‘terraform plan’ or ‘terraform apply’ command.


## **Practice 9: Manage Terraform State on a Remote Storage.** ## 

- When you’re working on a project with multiple users, you should always use Terraform backend to save the state file in a shared remote store.


## **Practice 10: Generate README for each Module with Input and Output Variables.** ## 

- You must have a self-explanatory README.md as a part of all your Terraform projects.


## **Practice 11: Use Workspaces.** ## 

- Using multiple working folders is the simplest way to manage numerous instances of a setup with totally distinct state data.

- Make use of Terraform workspaces to create multiple environments like Dev, QA, Pre-Prod, Prod, and more using the same Terraform configuration files and saving the state files for each environment in the same backend.
 

## **Practice 12: Avoid Storing Credentials in the Terraform Code.** ## 

- Do not store sensitive information in Terraform configuration files; instead use Secret Management Systems like HashiCorp Vault, Azure key vault.


## **Practice 13: Use Terraform Import.** ## 

- Even if you have resources that were provisioned manually, import them into Terraform. This way, you’ll be able to use Terraform to manage these resources in the future and throughout their lifecycle.
 

## **Practice 14: Automate your Deployment with a CI / CD Pipeline.** ## 

- Decide on whether you want to store your Terraform Configuration in a separate repository or combine it with your application code and have a CI/CD pipeline in place to create the infrastructure. 


## **Practice 15: Stay Up to Date** ## 

- Always update your Terraform version and code upon major releases. Otherwise, if you skip numerous major releases, upgrading becomes quite difficult.
     

## **Practice 16: Pin your Terraform and provider version** ## 

- Always set required_providers version and Terraform required_version in the terraform {} configuration block.
 

## **Practice 17: Validate your Terraform Code** ## 

- Always run the ‘terraform validate’ command while you are working on writing Terraform configuration files and make it a habit to identify and address problems as early as possible.