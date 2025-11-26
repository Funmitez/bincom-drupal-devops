 Highly Available Drupal DevOps Project 🚀

This project demonstrates a full **DevOps lifecycle** deployment of a **Highly Available Drupal Application** using modern cloud and automation tools.

---

## **Project Overview**

This project provisions and deploys a Drupal application with:

- Multi-AZ **AWS infrastructure** using **Terraform**
- EC2 instances for Drupal web servers
- **RDS MySQL (Multi-AZ)** database
- **Application Load Balancer** for traffic distribution
- **Ansible** for configuration management and Drupal deployment
- **Docker & Docker Compose** for containerization
- **GitHub Actions** for CI/CD automation
- **Prometheus & Grafana** for monitoring and visualization
- High availability, fault tolerance, and auto-scaling

---

## **Architecture**

lua
Copy code
      +-------------------+
      |  Application LB   |
      +--------+----------+
               |
   +-----------+-----------+
   |                       |
+----+----+ +----+----+
| EC2 Web | | EC2 Web |
| 44.222 | | 184.73 |
+----+----+ +----+----+
| |
+-----------+-----------+
|
+----+----+
| RDS DB |
| Multi-AZ|
+---------+

yaml
Copy code

---

## **Getting Started**

### **1. Clone the Repository**
```bash
git clone https://github.com/Funmitez/bincom-drupal-devops.git
cd bincom-drupal-devops
2. Terraform Infrastructure
Configure AWS credentials.

Update terraform/terraform.tfvars with your values.

Initialize Terraform:

bash
Copy code
terraform init
terraform plan
terraform apply
Note EC2 IPs, RDS endpoint, and ALB DNS.

3. Ansible Deployment
Update ansible/hosts.ini with EC2 public IPs.

Run the playbook:

bash
Copy code
ansible-playbook -i ansible/hosts.ini ansible/drupal.yml
Verify Drupal is running via the Load Balancer URL.

4. Docker & Docker Compose
Build the Drupal container:

bash
Copy code
docker build -t drupal-app .
docker-compose up -d
Optional: Prepare for Kubernetes deployment.

5. CI/CD Pipeline
The .github/workflows/deploy.yml workflow handles:

Build

Test

Deploy to staging

Smoke test

Production deployment (manual approval optional)

6. Monitoring
Prometheus Targets:

44.222.219.79:9100

184.73.84.159:9100

Grafana Dashboards track:

CPU, memory, disk

Web traffic & errors

Database performance

Project Deliverables
Terraform scripts for AWS infrastructure

Ansible playbooks for Drupal deployment

Dockerfile & docker-compose.yml

GitHub Actions workflow

Prometheus & Grafana configuration

Presentation slides

Full documentation

GitHub Repository
https://github.com/Funmitez/bincom-drupal-devops

Skills Demonstrated
Cloud Infrastructure (AWS)

Infrastructure as Code (Terraform)

Configuration Management (Ansible)

Containerization (Docker)

CI/CD (GitHub Actions)

Monitoring & Logging (Prometheus, Grafana)

High Availability & Fault Tolerance

License
MIT License

Contact
Adeniyi Islamiat Aderonke
📧 adeniyifunmilola77@gmail.com
📞 +234 07062942103

yaml
Copy code
