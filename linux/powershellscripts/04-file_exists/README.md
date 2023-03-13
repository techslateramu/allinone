
![TechSlate](../../../global/images/ts.png)

# Check File Existence in Directory - PowerShell Script

### This PowerShell script checks if a specified file exists in a specified directory.

# Introduction

## What is PowerShell scripting ?

- PowerShell scripting is a powerful automation tool developed by Microsoft that allows users to automate tasks and system administration tasks on Windows operating systems. It is a command-line shell and scripting language that is designed to automate administrative tasks for Windows-based operating systems, such as managing system configurations, setting up network settings, and working with files and directories. PowerShell scripts can be used to automate a wide range of tasks, including system maintenance, software installation, and configuration management, among others.

- PowerShell scripting works by allowing users to write scripts that can execute commands, manage variables, and manipulate data within the Windows environment. These scripts can be saved as text files with the .ps1 extension and can be executed using the PowerShell command-line interface. PowerShell scripts can also be used in combination with other scripting languages, such as Python or Bash, to automate complex tasks.

- PowerShell scripting has become an important tool for system administrators and IT professionals, as it can save time and reduce errors by automating repetitive tasks. It is also widely used in DevOps and cloud computing environments for automating infrastructure management and deployment tasks.


# Pre-requisites

- **PowerShell**: The script requires PowerShell to be installed on your computer. PowerShell is a task automation and configuration management framework from Microsoft, which provides a command-line interface for interacting with the operating system and executing scripts.

- **Execution Policy**: By default, PowerShell's execution policy is set to "Restricted" to prevent malicious scripts from running. To run the script, you need to change the execution policy to "RemoteSigned" or "Unrestricted" by running the following command in PowerShell: `Set-ExecutionPolicy RemoteSigned`. This allows you to run PowerShell scripts that are created on your local computer or are downloaded from the internet, but not scripts that are signed by an untrusted publisher.

- **Text Editor**: You need a text editor to create and edit the PowerShell script. You can use any text editor, such as Notepad or Visual Studio Code.

# How to Run

- ### To use this program, simply create a file called  `script.ps1` and add the script to it and mention respective directory path and file name in the script for which you want to have a check.


![script](images/script.png)


- ### Now lets run the following command to check whether the file exists in that directory.

```
.\script.ps1

```

![script](images/print.png)


- ### So, the output will say `"File exists in directory"`.

![script](images/output.png)




# Description

- The PowerShell script checks if a specified file exists in a specified directory using the `Test-Path cmdlet`.

The script uses two variables, `$filePath` and `$directoryPath`, to specify the file name and directory path, respectively. These variables are used to construct the full path to the file using the string concatenation operator `+`.

The `Test-Path` cmdlet is then used to check if the specified file exists in the specified directory. If the file exists, the script outputs the message "File exists in directory" using the `Write-Host` cmdlet. If the file does not exist, the script outputs the message "File does not exist in directory".

The script is designed to be flexible so that you can modify the `$filePath` and `$directoryPath` variables to check for any file in any directory.







