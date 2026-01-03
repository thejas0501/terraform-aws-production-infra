# Production-Ready AWS Infrastructure using Terraform

This project demonstrates how to design and deploy a **production-grade AWS infrastructure** using **Terraform (Infrastructure as Code)**.

The architecture follows real-world DevOps best practices such as high availability, scalability, security, and automation.

---

## 🚀 Architecture Overview

- Custom **VPC**
- Public and Private Subnets (Multi-AZ)
- Application Load Balancer (ALB)
- Auto Scaling Group (ASG)
- Launch Template for EC2
- Least-privilege Security Groups

### Traffic Flow

Users → Application Load Balancer → Target Group → Auto Scaling EC2 (Private Subnet)


---

## 🧱 Services & Tools Used

- **AWS**: VPC, EC2, ALB, Auto Scaling
- **Terraform**: Infrastructure as Code
- **Linux**: EC2 instance configuration
- **Networking**: Subnets, Security Groups, Routing

---

## ⚙️ Key Highlights

- Designed a **multi-AZ highly available** architecture
- Deployed backend EC2 instances in **private subnets (no public IPs)**
- Implemented **Auto Scaling Group** for auto-healing and scalability
- Secured infrastructure using **least-privilege security groups**
- Managed complete infrastructure lifecycle using **Terraform**

---

## 🛠 How to Deploy

```bash
terraform init
terraform validate
terraform plan
terraform apply
```

📌 Author

K A THEJAS
Aspiring DevOps Engineer
