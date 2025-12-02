# DevOps Intern Final Assessment Project

![CI](https://github.com/Pwdak/devops-intern-final/actions/workflows/ci.yml/badge.svg)

**Name:** Arnold KOUEVI 
**Date:** 12/2/2025  

## 📌 Project Description
This repository has been created as part of the DevOps intern final assessment project.  
It contains all relevant files, configurations, and documentation required to demonstrate the skills and practices learned during the training.  

---

### 🚀 Key Highlights
- Structured for clarity and ease of navigation  
- Demonstrates DevOps principles and workflows using open-source tools I've learned (Linux, GitHub, Docker, CI/CD, Nomad, Monitoring) 
- Serves as a final assessment submission  

---

### 📂 Repository Contents
- `README.md` – Project overview and documentation  
- Additional files and configurations related to the assessment  

---

## 🚀 Getting Started

### 1. Git & GitHub Setup 

#### a. Clone the repository
```bash
git clone https://github.com/Pwdak/devops-intern-final.git
cd devops-intern-final
```

#### b. Run the Python script
```bash
python3 hello.py
```

Script will print:

```
Hello, DevOps!
```

### 2. Linux & Scripting Basics

#### Run the Bash script
```bash
chmod +x sysinfo.sh
./sysinfo.sh 
```

### 3. Docker Basics

#### a. Build the image
```bash
docker build -t devops-hello .
```

#### b. Run the container
```bash
docker run -d --rm --name devops-hello-container devops-hello
```

Output:

```
Hello, DevOps!
```

### 4. CI/CD with GitHub Actions

![CI](https://github.com/Pwdak/devops-intern-final/actions/workflows/ci.yml/badge.svg)


### 5. Job Deployment with Nomad

Ensure you have Nomad installed and your Docker image built locally.

#### a. Build the Docker image
```bash
docker build -t devops-hello .
```

#### b. Run the Nomad job
```bash
nomad job run nomad/hello.nomad
```

### 6. Monitoring Setup (`monitoring/loki_setup.txt`)

Create a folder `monitoring/` and inside it add `loki_setup.txt`:

```text
# Grafana Loki Setup

1. Start Loki locally using Docker:
   docker run -d --name=loki -p 3100:3100 grafana/loki:2.9.0

2. Forward container logs to Loki:
   Example using Docker driver:
   docker logs <container_id> --follow | curl -XPOST \
     -H "Content-Type: application/json" \
     --data-binary @- http://localhost:3100/loki/api/v1/push

3. View logs:
   You can query logs via Loki’s API:
   curl "http://localhost:3100/loki/api/v1/query?query={job=\"hello\"}"

   Or connect Grafana to Loki (add Loki as a data source in Grafana UI).

---

## 📂 Repository Structure
```
.
├── README.md       # Project overview, usage instructions, and setup guide
├── hello.py        # Python script
└── hello.sh        # Bash script
```

---

## 🙌 Acknowledgments
Special thanks to mentors and colleagues who provided guidance throughout the internship.
```