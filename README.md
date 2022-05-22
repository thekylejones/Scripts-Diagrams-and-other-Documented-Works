# Scripts-Diagrams-and-other-Documented-Works
This is a collection of my any scripts, diagrams or other documented work.
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

https://drive.google.com/file/d/15zhEm7B0QPgEjXdMiZLHdgCogVnwPqmk/view?usp=sharing

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the my-playbook.yml file may be used to install only certain pieces of it, such as Filebeat.

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting direct access to the network.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the logs and system metrcics.

The configuration details of each machine may be found below.

| Name       | Function | IP Address     | Operating System |
|------------|----------|----------------|------------------|
| Jump Box   | Gateway  | 20.213.130.149 | Linux            |
| ELK_SERVER | Server   | 21.212.22.72   | Linux            |   
| Web-1      | VM       | 10.0.0.5       | Linux            |
| Web-2      | VM       | 10.0.0.6       | Linux            |
| Web-3      | VM       | 10.0.0.7       | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses: 24.126.189.146

Machines within the network can only be accessed by 20.213.130.149.

A summary of the access policies in place can be found in the table below.

| Name       | Publicly Accessible | Allowed IP Addresses |
|------------|---------------------|----------------------|
| Jump Box   | Yes                 | 24.126.189.146       |
| ELK_SERVER | No                  | 20.213.130.149       |
| Web-1      | No                  | 21.212.22.72         |
| Web-2      | No                  | 21.212.22.72         |
| Web-3      | No                  | 21.212.22.72         |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because it saves time and boosts effeciency.

The playbook implements the following tasks:
- Install Docker
- Install Python3-pip
- Increase virtual memory

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![TODO: Update the path with the name of your screenshot of docker ps output](Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- 10.0.0.5
- 10.0.0.6
- 10.0.0.7
