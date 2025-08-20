#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*
# Windows 10 VM - Variables.
#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*#*

# Service Principal Variables


# Prefix and Tags

variable "prefix" {
    description =   "Prefix to append to all resource names"
    type        =   string
    default     =   "basic"
}

variable "tags" {
    description =   "Resouce tags"
    type        =   map(string)
    default     =   {
        "project"       =   "Collabnix"
        "deployed_with" =   "Terraform"
    }
}

# Resource Group

variable "location" {
    description =   "Location of the resource group"
    type        =   string
    default     =   "East US 2"
}

# Vnet and Subnet

variable "vnet_address_range" {
    description =   "IP Range of the virtual network"
    type        =   string
    default     =   "10.0.0.0/16"
}

variable "subnet_address_range" {
    description =   "IP Range of the virtual network"
    type        =   string
    default     =   "10.0.1.0/24"
}

# Public IP and NIC Allocation Method

variable "allocation_method" {
    description =   "Allocation method for Public IP Address and NIC Private ip address"
    type        =   list(string)
    default     =   ["Static", "Dynamic"]
}


# VM 

variable "virtual_machine_size" {
    description =   "Size of the VM"
    type        =   string
    default     =   "Standard_B1s"
}

variable "computer_name" {
    description =   "Computer name"
    type        =   string
    default     =   "Win10vm"
}

variable "admin_username" {
    description =   "Username to login to the VM"
    type        =   string
    default     =   "winadmin"
}

variable "admin_password" {
    description =   "Password to login to the VM"
    type        =   string
    default     =   "P@$$w0rD2020*"
}

variable "os_disk_caching" {
    default     =       "ReadWrite"
}

variable "os_disk_storage_account_type" {
    default     =       "StandardSSD_LRS"
}

variable "os_disk_size_gb" {
    default     =       128
}

variable "publisher" {
    default         =       "MicrosoftWindowsServer"
}

variable "offer" {
    default         =       "WindowsServer"
}

variable "sku" {
    default         =       "2016-Datacenter"
}

variable "vm_image_version" {
    default         =       "latest"
}

