
# ShellSculptor

Welcome to **ShellSculptor**, a curated collection of Bash scripts designed to streamline various Linux tasks, primarily focusing on deployment and backup. These scripts are crafted to help system administrators and developers enhance their productivity and simplify their workflows.

## Table of Contents

- [ShellSculptor](#shellsculptor)
  - [Table of Contents](#table-of-contents)
  - [Scripts Overview](#scripts-overview)
    - [backup\_mssql.sh](#backup_mssqlsh)
    - [compress\_and\_backup.sh](#compress_and_backupsh)
    - [deploy\_service.sh](#deploy_servicesh)
    - [unzip\_and\_set\_permissions.sh](#unzip_and_set_permissionssh)
    - [create\_systemd\_service.sh](#create_systemd_servicesh)
    - [compress\_directory.sh](#compress_directorysh)
  - [Usage](#usage)
    - [Prerequisites](#prerequisites)
    - [Execution](#execution)
  - [License](#license)

## Scripts Overview

### backup_mssql.sh

**Description:**  
This script creates a backup of a specified MSSQL database and saves it to a specified directory.

**Usage:**  
```bash
./backup_mssql.sh <database_name> <user:group>
```

**Example:**  
```bash
./backup_mssql.sh RandomDB ftpuser:ftpuser
```

### compress_and_backup.sh

**Description:**  
This script compresses the backups into a ZIP file and moves it to the specified destination directory. It is intended to be run weekly.

**Usage:**  
```bash
./compress_and_backup.sh <backup_directory> <destination_directory>
```

**Example:**  
```bash
./compress_and_backup.sh /var/opt/mssql/backups /home/inetpub/APPs/
```

### deploy_service.sh

**Description:**  
This script deploys a service by unzipping a specified ZIP file into a destination directory and setting up a systemd service to manage the application.

**Usage:**  
```bash
./deploy_service.sh <destination_directory> <zip_file> <service_name> <executable_path> [service_description]
```

**Example:**  
```bash
./deploy_service.sh /opt/myapp myapp.zip myappservice /opt/myapp/myapp.dll "My Application Service"
```

### unzip_and_set_permissions.sh

**Description:**  
Unzips a specified ZIP file into a destination directory and sets appropriate permissions for executable and configuration files.

**Usage:**  
```bash
./unzip_and_set_permissions.sh <destination_directory> <zip_file>
```

**Example:**  
```bash
./unzip_and_set_permissions.sh /opt/myapp myapp.zip
```

### create_systemd_service.sh

**Description:**  
Prompts the user for details and creates a systemd service file to manage a .NET application.

**Usage:**  
```bash
./create_systemd_service.sh
```

**Example:**  
Just run the script and follow the prompts.

### compress_directory.sh

**Description:**  
Compresses a specified directory into a ZIP file and moves it to a destination directory, setting the appropriate user and group ownership.

**Usage:**  
```bash
./compress_directory.sh <directory_to_compress> <destination_directory> <user:group>
```

**Example:**  
```bash
./compress_directory.sh /var/www/html /backups ftpuser:ftpuser
```

## Usage

### Prerequisites

- Ensure you have the necessary permissions to execute these scripts.
- Install required dependencies, such as `unzip` and `zip`.

**Install Unzip:**
```bash
sudo apt-get update
sudo apt-get install -y unzip
```

### Execution

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/IOxee/ShellSculptor.git
   cd ShellSculptor
   ```

2. **Make Scripts Executable:**
   ```bash
   chmod +x *.sh
   ```

3. **Run the Desired Script:**
   Follow the usage instructions provided above for each script.

**Example:**
To backup an MSSQL database:
```bash
./backup_mssql.sh RandomDB ftpuser:ftpuser
```

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.
