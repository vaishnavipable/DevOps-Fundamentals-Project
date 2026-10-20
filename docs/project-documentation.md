# DevOps Fundamentals Project

## 1. Project Overview
This project demonstrates basic DevOps practices using Ubuntu, Git, GitHub, Apache, and Bash automation scripts.

## 2. Website
The project website is stored in `index.html` and is served using the Apache web server.

## 3. Bash Automation Scripts

### Health Check Script
File: `scripts/health-check.sh`

This script displays:
- Server hostname
- Server uptime
- CPU usage
- Disk usage
- Memory usage
- Logged-in users
- Top running processes
- Apache service status

Run using:
```bash
./scripts/health-check.sh
```

### Apache Monitoring Script
File: `scripts/apache-monitor.sh`

This script checks whether Apache is running. If Apache is stopped, it attempts to start the service and reports the result.

Run using:
```bash
./scripts/apache-monitor.sh
```

### Website Backup Script
File: `scripts/backup.sh`

This script compresses `index.html` into a timestamped `.tar.gz` archive and stores it in the `Backup` directory.

Run using:
```bash
./scripts/backup.sh
```

## 4. Backup Storage
Backups are stored in the `Backup/` directory. Each backup filename includes a timestamp to help distinguish different backup runs.

## 5. Version Control
Git is used to track project changes. GitHub hosts the repository, and Git branches and merging are used to manage changes.

## 6. Project Repository
GitHub: https://github.com/vaishnavipable/DevOps-Fundamentals-Project
