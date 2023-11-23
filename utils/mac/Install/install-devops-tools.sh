# Check if Homebrew is installed
if ! command -v brew &> /dev/null; then
    echo " ***************************** Installing Homebrew... ***************************** "
    # Install Homebrew
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo " ***************************** Homebrew installed. ***************************** "
else
    echo " ***************************** Homebrew is already installed. ***************************** "
fi

# Check if Git is installed
if ! command -v git &> /dev/null; then
    echo " ***************************** Installing Git... ***************************** "
    # Install Git using Homebrew
    brew install git
    echo " ***************************** Git installed. ***************************** "
else
    echo " ***************************** Git is already installed. ***************************** "
fi

# Check if Terraform is installed
if ! command -v terraform &> /dev/null; then
    echo " ***************************** Installing Terraform... ***************************** "
    # Install Terraform using Homebrew
    brew install terraform
    echo " ***************************** Terraform installed. ***************************** "
else
    echo " ***************************** Terraform is already installed. ***************************** "
fi

# Check if Visual Studio Code is installed
if ! command -v code &> /dev/null; then
    echo " ***************************** Installing Visual Studio Code... ***************************** "
    # Install Visual Studio Code using Homebrew
    brew install --cask visual-studio-code
    echo " ***************************** Visual Studio Code installed. ***************************** "
else
    echo " ***************************** Visual Studio Code is already installed. ***************************** "
fi

# Check if Azure CLI is installed
if ! command -v az &> /dev/null; then
    echo " ***************************** Installing Azure CLI... ***************************** "
    # Install Azure CLI using Homebrew
    brew install azure-cli
    echo " ***************************** Azure CLI installed. ***************************** "
else
    echo " ***************************** Azure CLI is already installed. ***************************** "
fi

# Check if AWS CLI is installed
if ! command -v aws &> /dev/null; then
    echo " ***************************** Installing AWS CLI... ***************************** "
    # Install AWS CLI using Homebrew
    brew install awscli
    echo " ***************************** AWS CLI installed. ***************************** "
else
    echo " ***************************** AWS CLI is already installed. ***************************** "
fi

# Check if Maven is installed
if ! command -v mvn &> /dev/null; then
    echo " ***************************** Installing Maven... ***************************** "
    # Install Maven using Homebrew
    brew install maven
    echo " ***************************** Maven installed. ***************************** "
else
    echo " ***************************** Maven is already installed. ***************************** "
fi

# Check if Postman is installed
if ! command -v postman &> /dev/null; then
    echo " ***************************** Installing Postman... ***************************** "
    # Install Postman using Homebrew
    brew install --cask postman
    echo " ***************************** Postman installed. ***************************** "
else
    echo " ***************************** Postman is already installed. ***************************** "
fi

# Check if Helm is installed
if ! command -v helm &> /dev/null; then
    echo " ***************************** Installing Helm... ***************************** "
    # Install Helm using Homebrew
    brew install helm
    echo " ***************************** Helm installed. ***************************** "
else
    echo " ***************************** Helm is already installed. ***************************** "
fi

# Check if Studio 3T is installed
if ! command -v studio3t &> /dev/null; then
    echo " ***************************** Installing Studio 3T... ***************************** "
    # Install Studio 3T using Homebrew
    brew install --cask studio-3t
    echo " ***************************** Studio 3T installed. ***************************** "
else
    echo " ***************************** Studio 3T is already installed. ***************************** "
fi

# Check if kubectl is installed
if ! command -v kubectl &> /dev/null; then
    echo " ***************************** Installing kubectl... ***************************** "
    # Install kubectl using Homebrew
    brew install kubernetes-cli
    echo " ***************************** kubectl installed. ***************************** "
else
    echo " ***************************** kubectl is already installed. ***************************** "
fi
