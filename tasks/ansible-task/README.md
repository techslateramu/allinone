![TechSlate](../../global/images/ts.png)

# Interview-Task-Ansible-

# Table of contents

1.[overview](#**<overview>)

2.[Introduction](#**<Introduction>**)

3.[Test Instructions](#**<Test-Instructions>**)

4.[Task3](#**<Task3>**)

5.[solution](#**<solution>**)

## **Overview**

This represents a common initial stage in the interview process, involving an online test with various tasks to complete. The test requires candidates to execute predefined test cases. Once the assigned tasks are finished, candidates must run the provided test cases. If all test cases pass successfully, they can proceed to submit their results. In the event that any test case fails, candidates have the opportunity to make necessary adjustments before resubmitting. Attached are the test instructions, and screenshots for Task 2 have been included for clarity.

## **Introduction**

In a typical job interview process, the technical test is a crucial stage that evaluates a candidate's practical skills and knowledge relevant to the job position. This stage usually consists of a series of tests or exercises designed to assess the candidate's ability to solve technical problems and perform tasks that are directly related to the role they are applying for. Here is a test home screen instructions how it looks like.

## Test Instructions : 

Thanks for your interest in joining the team and for taking the time to complete this online technical evaluation that is designed to enable the recruitment team to better understand where your strengths are.
This online evaluation includes one of the following modules:
* Multiple or Single Choice Questions
* One or more coding challenges
* Diagram challenge
* Project challenge

Good luck, have fun, and thanks again for your interest in joining the team!

### Notes:

• You can access the instructions panel on the top left side of your screen where you will be able to see all these instructions again.

• A fully functional IDE is provided for you for the coding Challenges.

• You can run/debug your code inside the integrated console for the Coding Challenges.

### DESCRIPTION: 

To begin, kindly provide your login credentials, including your email address. Once this information is submitted, you will be prepared to initiate the test. In certain instances, practice tests may be available to help you familiarize yourself with the format of the actual test. When you are ready to commence the official examination, the timer will be activated, and you must complete the test within the allocated time frame before submitting your responses.

![Visual studio page](../git-task/images/Testhome1.png)

## TASK 3:

## Ansible Task:

In this challenge you will need to use Ansible, playbook /root/playbook.yml 

## Your task is to:

• Create a new user second-user

• Change the shell for the newly created user to /bin/sh

• Create a new group second-group

• Add user second-user to the group second-group

![Visual studio page](../git-task/images/ansible-task1.png)

# **Solution**

### **Create playbook.yaml**

```
---
- name: Configure Users and Groups
  hosts: your_target_server
  become: true

  tasks:
    - name: Create a new user second-user
      user:
        name: second-user
        state: present

    - name: Change the shell for the newly created user to /bin/sh
      user:
        name: second-user
        shell: /bin/sh

    - name: Create a new group second-group
      group:
        name: second-group
        state: present

    - name: Add user second-user to the group second-group
      user:
        name: second-user
        groups: second-group
        append: yes
---
```

You can save this configuration in a file named playbook.yaml and then run below command.

## COMMAND: 

**``` ansible-playbook /root/playbook.yml```**

![Visual studio page](../git-task/images/ansible-task3.png)
