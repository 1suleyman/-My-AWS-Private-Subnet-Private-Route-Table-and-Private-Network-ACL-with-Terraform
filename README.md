# 🌐 My AWS Private Subnet, Private Route Table, and Private Network ACL with Terraform

I decided to extend my AWS networking lab using Terraform by creating a **private subnet**, **private route table**, and **private network ACL**. This ensures resources like databases remain isolated and inaccessible from the internet. 🖥️☁️

**Part 3 in my networking series**

---

## 📋 Project Overview

<img width="837" height="736" alt="image" src="https://github.com/user-attachments/assets/1a911c09-4df1-4981-a5ce-8ddd6245e131" />

**Terraform Goal:**
Use Terraform to declaratively provision a private subnet, associate it with a dedicated route table, and secure it with a custom network ACL, keeping sensitive resources private.

**Key Benefits of Terraform:**

* Infrastructure is **reproducible** and **version-controlled**
* I can **modify or destroy** resources without touching the AWS console
* Makes my **portfolio project fully automated**

---

## 📦 Terraform Project Structure

```text
terraform-private-subnet/
├── main.tf          <-- Terraform configuration for private subnet, route table, and network ACL
├── variables.tf     <-- Input variables (VPC ID, subnet CIDR, region)
├── outputs.tf       <-- Outputs (subnet ID, route table ID, ACL ID)
└── terraform.tfvars <-- Variable values
```

You can view the **Terraform files here**:

* [main.tf](https://github.com/1suleyman/-AWS-private-subnet-route-table-NACL-Hands-On-Lab/blob/main/main.tf)
* [variables.tf](https://github.com/1suleyman/-AWS-private-subnet-route-table-NACL-Hands-On-Lab/blob/main/variables.tf)
* [outputs.tf](https://github.com/1suleyman/-AWS-private-subnet-route-table-NACL-Hands-On-Lab/blob/main/outputs.tf)
* [terraform.tfvars](https://github.com/1suleyman/-AWS-private-subnet-route-table-NACL-Hands-On-Lab/blob/main/terraform.tfvars)

---

## 🛠 Terraform Steps I Followed

### Step 1: Create the Private Subnet

I created a new subnet in my VPC to host private resources like databases.

**Terraform File:** [main.tf private subnet section](https://github.com/1suleyman/-AWS-private-subnet-route-table-NACL-Hands-On-Lab/blob/main/main.tf#L7)

💡 **Tip:** I assigned the CIDR block `10.0.1.0/24` to avoid overlapping with my public subnet (`10.0.0.0/24`).

---

### Step 2: Create a Private Route Table & Associate It

I created a dedicated route table for the private subnet to ensure it only routes traffic internally.

**Terraform File:** [main.tf private route table section](https://github.com/1suleyman/-AWS-private-subnet-route-table-NACL-Hands-On-Lab/blob/main/main.tf#L15)

💡 **Tip:** Without a route to the internet gateway, my private subnet cannot access the internet directly.

---

### Step 3: Create a Private Network ACL

I created a custom network ACL for my private subnet to restrict traffic.

**Terraform File:** [main.tf private network ACL section](https://github.com/1suleyman/-AWS-private-subnet-route-table-NACL-Hands-On-Lab/blob/main/main.tf#L25)

💡 **Tip:** Custom network ACLs start with **deny all inbound/outbound traffic**. I can customize them later when I know exactly which traffic sources to allow.

---

### Step 4: Associate the Private NACL with the Subnet

I associated my new private network ACL with the private subnet to enforce rules.

**Terraform File:** [main.tf subnet ACL association section](https://github.com/1suleyman/-AWS-private-subnet-route-table-NACL-Hands-On-Lab/blob/main/main.tf#L40)

💡 **Tip:** ACL rules only take effect when associated with a subnet.

✅ **Checkpoint:** Private subnet, private route table, and private network ACL are all configured and associated correctly.

<img width="272" height="32" alt="Screenshot 2025-09-18 at 15 56 28" src="https://github.com/user-attachments/assets/373e61c9-f195-42ab-be0b-fb6742d1f6fa" />

<img width="255" height="32" alt="Screenshot 2025-09-18 at 16 04 01" src="https://github.com/user-attachments/assets/fa1e937b-8965-4ceb-a4c1-6d3fa42f2332" />

<img width="273" height="124" alt="Screenshot 2025-09-18 at 16 04 19" src="https://github.com/user-attachments/assets/1d3e4f64-6fd6-44d7-9161-8bfcd7294b17" />

<img width="256" height="32" alt="Screenshot 2025-09-18 at 16 03 46" src="https://github.com/user-attachments/assets/21bed69f-511a-47c8-bfd8-2799ee9ffeb8" />

<img width="1011" height="145" alt="Screenshot 2025-09-18 at 16 05 13" src="https://github.com/user-attachments/assets/0fe2e9b2-f9ea-43ae-8c6e-9c92e5726d18" />

<img width="1016" height="139" alt="Screenshot 2025-09-18 at 16 05 27" src="https://github.com/user-attachments/assets/b8fc6552-4f72-45ef-9fe9-6c2eb06e7ae3" />

<img width="228" height="133" alt="Screenshot 2025-09-18 at 16 05 38" src="https://github.com/user-attachments/assets/452fc7eb-d24e-4b51-b5dd-597920e6fbd6" />

---

## ✅ How I Deployed

* Ran `terraform init` to initialize the working directory
* Ran `terraform plan` to preview changes
* Ran `terraform apply` to create the private subnet, route table, and network ACL
* Verified resources in AWS Console

---

## 📌 Project Summary

| Step                       | Status | Key Notes                                                    |
| -------------------------- | ------ | ------------------------------------------------------------ |
| Create Private Subnet      | ✅      | CIDR block 10.0.1.0/24                                       |
| Create Private Route Table | ✅      | Routes only internal traffic                                 |
| Create Private Network ACL | ✅      | Deny all inbound/outbound by default; associated with subnet |

---

## 💡 Notes / Tips

* **Private Subnet:** Keeps sensitive resources isolated from the internet
* **Route Tables:** Control traffic routing for the subnet
* **Network ACLs:** Apply subnet-level traffic rules

---

## ✅ References

* [Amazon VPC Documentation](https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html)
* [Network ACLs](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html)
* [Security Groups](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html)
