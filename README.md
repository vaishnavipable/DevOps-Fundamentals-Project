# DevOps Fundamentals Project

## 1. Project Overview

This project demonstrates the deployment and management of a cloud-based Linux server using Amazon Web Services (AWS). It covers Linux administration, web server deployment, GitHub version control, Bash scripting, system log analysis, and basic automation.

**Project objectives:**
- Launch and configure an Ubuntu EC2 instance.
- Install and manage the Apache web server.
- Create and deploy a custom website.
- Use Git and GitHub to track and store project files.
- Automate server health checks, Apache monitoring, and website backups using Bash scripts.
- Analyze Linux system logs and document the findings.

## 2. AWS Architecture

The project uses an Ubuntu EC2 instance hosted on AWS.

**Main components:**
- **Amazon EC2:** Provides the cloud-based Ubuntu server.
- **Security Group:** Controls inbound and outbound network traffic according to the configured rules.
- **Apache HTTP Server:** Hosts the project website.
- **GitHub Repository:** Stores the website, scripts, backup files, reports, and documentation.

The EC2 instance is accessed securely through SSH using an SSH key. The website is served through Apache.

## 3. Installation Steps

1. Launch an Ubuntu EC2 instance in AWS.
2. Configure the required security group rules for SSH and website access.
3. Connect to the instance using SSH.
4. Update the Ubuntu package lists.
5. Install Apache, Git, and the required Linux utilities.
6. Create the website files in the Apache web directory.
7. Start and verify the Apache service.
8. Create a GitHub repository and configure Git authentication.
9. Clone or connect the repository to the project directory.
10. Create Bash scripts for server monitoring and website backup.
11. Analyze Linux authentication and system logs.
12. Save the documentation and push project changes to GitHub.

## 4. Commands Used

The following are examples of commands used during the project.

**Linux system administration**
- `pwd` — display the current directory.
- `ls -la` — list files, including hidden files.
- `sudo apt update` — update package lists.
- `sudo systemctl status apache2` — check Apache service status.
- `df -h` — check filesystem disk usage.

**Website and version control**
- `curl http://localhost` — test the locally hosted website.
- `git status` — check repository changes.
- `git add` — stage files for version control.
- `git commit -m "message"` — commit changes.
- `git push origin main` — push commits to GitHub.

**Log analysis**
- `sudo grep -i "failed" /var/log/auth.log | tail -20`
- `sudo grep -iE "Accepted|Failed|Invalid user" /var/log/auth.log | tail -20`
- `sudo grep -iE "error|critical|alert|emerg" /var/log/syslog | tail -20`
- `sudo grep -i "warn" /var/log/syslog | tail -20`

## 5. Folder Structure

```text
DevOps-Fundamentals-Project/
├── Backup/
│   └── Timestamped website backup archives
├── docs/
│   └── Project documentation
├── screenshots/
│   └── Project evidence screenshots
├── scripts/
│   └── Bash automation scripts
├── index.html
├── log-report.txt
└── README.md
```

## 6. Challenges Faced

- Configuring SSH access to the Ubuntu EC2 instance.
- Installing and verifying the Apache web server.
- Connecting the local project files to GitHub.
- Correcting the backup script to include the website files and create timestamped archives.
- Understanding authentication logs and identifying AWS Systems Manager role-related warnings.
- Organizing project files and documenting the implementation process.

## 7. Learning Outcomes

Through this project, I gained practical experience in:

- AWS EC2 and basic cloud infrastructure.
- Ubuntu Linux administration and command-line operations.
- Apache web server setup and website deployment.
- Git and GitHub version control.
- Bash scripting and task automation.
- Website backup and archive management.
- Linux authentication and system log analysis.
- Technical documentation and troubleshooting.

## Project Deliverables

- GitHub repository containing project files and scripts.
- AWS infrastructure and website evidence screenshots.
- Bash automation scripts.
- Timestamped website backup archive.
- Linux log analysis report (`log-report.txt`).
- Project report PDF.

## Conclusion

This project provided hands-on experience in deploying and managing a Linux web server in AWS. It combined cloud infrastructure, website hosting, version control, automation, backup management, and system log analysis into one practical DevOps project.
