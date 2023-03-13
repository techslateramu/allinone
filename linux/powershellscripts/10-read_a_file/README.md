
![TechSlate](../../../global/images/ts.png)

# PowerShell Script: Read File Line by Line

### This script demonstrates how to read a file line by line in PowerShell and perform a specific action on each line.

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

- ### To use this program, simply create a file called  `read-file.ps1` and add the script to it .

![script](images/script.png)


- ### Now lets run the following command to read a file run by run.

```
.\read-file.ps1

```

![script](images/print.png)


- ### So, it displays the line to line content of README.md file which i wanted to see.

![script](images/output.png)




# Description

- This PowerShell script demonstrates how to read a file line by line and perform a specific action on each line. The script uses the `Get-Content` cmdlet to read the contents of a specified file, and then loops through each line of the file using a `foreach` loop. Within the loop, the script performs a specific action on each line, which can be customized to suit the user's needs.

- The script is designed to be flexible and customizable, allowing users to perform any action they need on each line of the file. By default, the script uses the Write-Host cmdlet to display each line in the PowerShell console, but this can be replaced with any other cmdlet or custom action to perform a different action on each line.

