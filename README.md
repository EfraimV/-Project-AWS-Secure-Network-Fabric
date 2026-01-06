# 🌩️ AWS Secure Network Fabric

AWS Secure Network Fabric is a reference architecture for building a multi-account, security-first AWS network using zero-trust principles and automated monitoring.

The project demonstrates how to design scalable VPC connectivity while enforcing strict network boundaries, centralized inspection, and continuous security controls across multiple AWS accounts.

It is intended as a learning and reference project rather than a production-ready framework.

---

## 🎯 Who This Project Is For

This project is useful for:

- Cloud and network engineers learning multi-account AWS architectures
- Security-minded engineers exploring zero-trust networking patterns
- Platform teams designing centralized network and security controls
- Anyone preparing for cloud or network security roles

Basic familiarity with AWS networking concepts (VPCs, routing, IAM) is recommended.

---

## 🚨 Why This Architecture Exists

As AWS environments grow, networks often become:

- Flat and overly permissive
- Difficult to monitor centrally
- Hard to secure consistently across accounts

This project explores a different approach:

- Centralized connectivity and inspection
- Explicit trust boundaries between environments
- Security controls enforced by default, not by convention

The goal is to show how security and scalability can be designed together from the start.

---

## 🧠 Architecture Overview (High-Level)

The architecture follows a hub-and-spoke model:

1. A central networking account acts as the hub
2. Application VPCs connect through a shared transit layer
3. All traffic flows through centralized inspection points
4. Security policies are enforced consistently across accounts

This design allows teams to scale workloads without sacrificing visibility or control.

---

## 🧱 Core Components

### Transit Gateway

- Acts as the central hub for VPC connectivity
- Enables hub-and-spoke routing between accounts
- Simplifies route management as the environment grows

### AWS Network Firewall

- Provides centralized Layer 7 traffic inspection
- Enforces egress and ingress security policies
- Reduces duplicated firewall logic across VPCs

### AWS PrivateLink

- Enables secure, private service-to-service communication
- Prevents exposure of internal services to the public internet
- Supports least-privilege connectivity between workloads

---

## 🔐 Security Controls

Security is enforced at multiple layers:

- **Service Control Policies (SCPs)**  
  Enforce organizational guardrails such as requiring TLS 1.2+ across accounts

- **Network ACLs (NACLs)**  
  Use explicit deny rules to limit lateral movement

- **Amazon GuardDuty**  
  Provides continuous threat detection and alerting

Together, these controls help reduce the blast radius of potential compromises.

---

## 🤖 Automation & Operations

Automation is a core part of the design:

- **Terraform Cloud**  
  Manages infrastructure as code and detects configuration drift

- **Ansible Tower**  
  Automates patch management and configuration updates

This ensures the environment remains consistent, auditable, and reproducible.

---

## ⚠️ Limitations & Notes

- This project is a reference architecture, not a turnkey solution
- It does not cover application-level security or identity design in depth
- Cost optimization is not a primary focus

Design choices may need to be adapted for real-world production environments.

---

## 📚 Learning Notes

This project was built as part of my ongoing learning in cloud networking, security architecture, and documentation-as-code practices.

It focuses on explaining *why* certain architectural decisions are made, not just *how* to implement them.

---

## 📜 License

MIT
