
![TechSlate](../../../global/images/ts.png)

# Count Files in Directory - PowerShell Script.

### This is a simple PowerShell script that counts the number of files in a specified directory.

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

- ### To use this program, simply create a file called  `script_name.ps1` and add the script to it .

![script](images/script.png)


- ### Now lets run the following command to count the number of files in a specified directory.

```
.\script_name.ps1

```

![script](images/print.png)


- ### Yes , We can see that there are 2 files in that directory.

![script](images/output.png)




# Description

- This PowerShell script is a simple utility that counts the number of files in a specified directory. It uses the Get-ChildItem cmdlet to get all the items in the directory and then filters the results to only include files (using the -File parameter). The Count property of the resulting object is then used to count the number of files. The result is printed to the console using the Write-Host cmdlet.

- The script takes one argument, -directoryPath, which specifies the path of the directory to count the files in. The path must be provided in quotes.


