# Terraform Deliverys 
Repositório para estudo do terraform com AWS.

- o que é o Terraform : é uma ferramenta de infraestrutura como código (IaC) usada para provisionar e gerenciar  recursos de infraestrutura de maneira declarativa.

## Estrutura de arquivo:
- [.tf]
## Começando
```
## Instalando o Terraform:
```sh 
brew install terraform
brew tap hashicorp/tapgit
brew install hashicorp/tap/terraform
```
## Comandos uteis 
```sh
terraform init 
terraform fmt -check
terraform diff 
terraform validate
terraform plan 
terraform plan -out plan.out 
terraform show 
terrafom apply 
terraform  terraform apply -destroy
 ``` 
# Terraform State(backends)
- o que é o State : Toda vez que você executa o Terraform, ele registra informações sobre qual infraestrutura ele criou em um arquivo de estado do Terraform ```/foo/bar/terraform.tfstate```registra um mapeamento dos recursos do Terraform em seus arquivos de configuração para a representação desses recursos no mundo real.

## Backends(remotos)
 Um backend do Terraform determina como o Terraform carrega e armazena o estado. O padrão,é o backend local que armazena o arquivo de estado no seu disco local. Os backends remotos(Google Cloud Storage) permitem que você armazene o arquivo de estado em um armazenamento remoto compartilhado. 
