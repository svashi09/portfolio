# 🌐 Shivani Vashi – Personal Portfolio Website

This is my personal portfolio website showcasing my education, experience, skills, and projects. The site is built using HTML and CSS and deployed as a static website on AWS S3 using Terraform.

## 🚀 Live Site

http://svashitfprojectwebsite12025.s3-website-us-east-1.amazonaws.com

---

## ✨ Features

- Clean, modern UI
- Responsive layout across devices
- Animated sections and skill tooltips
- Skills grid with technology icons and hover labels
- Projects page with detailed summaries
- Hosted on AWS S3 via Infrastructure as Code (Terraform)

---

## 🛠 Tech Stack

- **Frontend**: HTML5, CSS3, Devicon
- **Animations**: CSS transitions & keyframes
- **Infrastructure**: AWS S3, IAM, Terraform
- **Tools**: Git, GitHub, VS Code

---

## 🧪 Project Structure

portfolio/
├── main.tf                   #
├── provider.tf               # 
├── variables.tf              # 
├── terraform.tfstate.backup  # 
├── .terraform.lock.hcl       # 
├── index.html                # Homepage (summary, education)
├── skills.html               # Skills (logo grid with tooltips)
├── projects.html             # Descriptions of personal projects
├── experience.html           # Work history & roles
├── style.css                 # Shared styling & animations
└── README.md                 # This file

---

## ⚙️ Deployment (Terraform + AWS S3)

This project is deployed using [Terraform](https://www.terraform.io/) to provision AWS resources:

- Creates a static website hosting-enabled S3 bucket
- Uploads all HTML/CSS files as objects
- Sets up appropriate bucket policies for public access
- Outputs the public website endpoint

### ✅ Prerequisites

- AWS CLI with credentials configured
- Terraform v1.x
- Files placed in the same directory as the `main.tf`
