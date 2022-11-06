## What is Ansible ?
<ul>
<li>It is an opensource automation tool
<li>It is used to automate provisioning and orchestrate your infrastructure like creating servers(AWS,GCP,Linux systems etc), setting up the initial configuration on all those servers,deploying applications on the servers.
<li>All manual things which is required to deploy an application the server can be automated using Ansible
<li>You can make the Zero touch deployment using Ansible that means with one click everything is setup and deployed successfully
</ul>

## How Ansible Works
<ul>
<li>In simple terms, we just need one node as an Ansible Master node where you will install ansible software
<li>There is no need to install any agent on any of the other nodes 
<li>It use the push mechanism to push the changes on to the remote nodes
<li>SSH Setup is required to connect to all the remote hosts.
</ul>

## Why Ansible?
### Problem Statement
<ul>
<li>There is a requirement of installing apache server on 10 nodes that requires creation of directories, user and groups.
<li>You will download the software, extract it and do the initial configuration of that software and then restart the tomcat services so that access your application on the browser
</li>
</ul>

## Manual approach
<ul>
<li>You will login to each of the servers
Create Users,groups,directories 
<li>Copy the software there and do the initial configuration
</ul>

### Issues
<li>You need expert of doing all the above tasks
Consume lot of time
<li>Increases chances of having different configuration on servers
<li>Manual Intervention
</ul>

## Automated Approach
<ul>
<li>You will create an Ansible playbook which does all the above steps using yaml file.
<li>Run the same playbook on all the servers which means there can’t be any surprised issues
<ul>

## Prerequisite:
<ol>
<li>Launch minimum 2 AWS EC2 instances
<li>Setup SSH connection between them

## Quick Setup
<ul>
<li>Set up your inventory file - you can use inventory as base
<li>Adjust values on your group_vars/all.yml file
<li>Run the lamp_setup.yml playbook to set up the LAMP server
<li>Run the deploy_laravel.yml playbook to deploy the  Laravel application
<li>Access your server's IP address or hostname to test the setup
