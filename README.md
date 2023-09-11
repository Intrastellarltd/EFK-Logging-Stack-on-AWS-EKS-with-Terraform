# EFK Logging Stack on AWS EKS with Terraform

## Architecture Diagram

![EFK Logging Stack on AWS EKS with Terraform - Architecture](/architecture-diagram/EFK%20Logging%20Stack%20on%20AWS%20EKS%20with%20Terraform.png)

---

## Introduction

Welcome to the **"EFK Logging Stack on AWS EKS with Terraform"** tutorial repository! In today's cloud-native world, robust logging and observability are crucial for maintaining the health and performance of our applications. This repository provides comprehensive Terraform and Kubernetes manifests to help you set up an Elastic, Fluentd, Kibana (EFK) logging stack on Amazon Web Services' Elastic Kubernetes Service (EKS).

## Problem Statement

Modern applications are distributed, dynamic, and often run on Kubernetes clusters, making traditional log management challenging. Developers and operations teams need a solution to collect, analyze, and visualize logs effectively to troubleshoot issues, monitor performance, and maintain security.

Setting up such a logging infrastructure manually can be a daunting task, especially when dealing with highly available and scalable architectures. It involves configuring various AWS resources, IAM roles, EKS clusters, and Kubernetes deployments, which can be error-prone and time-consuming.

## Solution

Our solution simplifies the process of setting up an EFK logging stack on AWS EKS by providing well-structured Terraform and Kubernetes manifests. Here's how our repository helps you solve the problem:

1. **Highly Available and Scalable Infrastructure**: We guide you through creating a custom VPC, a bastion host for secure access, IAM roles for EKS clusters and node groups, and an EKS cluster itself. This infrastructure is designed to be highly available and scalable, ensuring the reliability of our logging stack.

2. **Elasticsearch, Fluentd, and Kibana (EFK)**: We provide Kubernetes manifests for deploying Elasticsearch, Fluentd, and Kibana components. Elasticsearch is a powerful search and analytics engine for storing logs, Fluentd is a log collector, and Kibana offers a user-friendly interface for log visualization and analysis.

3. **CSI Addon for EBS**: We create Terraform manifests to enable the Elastic Block Store (EBS) Container Storage Interface (CSI) addon. This allows us to dynamically provision and attach EBS volumes to our pods, a crucial feature for persisting Elasticsearch data.

4. **Counter App for Testing**: To demonstrate the effectiveness of our EFK logging stack, we include a Kubernetes manifest for deploying a simple counter application. This application generates logs that are collected and visualized by Fluentd and Kibana.

By following our step-by-step tutorials and using our well-documented Terraform and Kubernetes manifests, you can effortlessly set up a highly available and scalable EFK logging stack on AWS EKS. Whether you're a developer, DevOps engineer, or anyone interested in enhancing observability in our Kubernetes environment, this repository is our go-to resource.

Experience the power of centralized logging and gain insights into our applications with ease. Get started today and level up your observability game!

**Happy Logging!**

---

### Generating user password for ElasticSearch and Kibana UI

```shell
kubectl exec -it $(kubectl get pods -n kube-logging |grep es-cluster-0 | sed -n 1p | awk '{print $1}') -n kube-logging -- bin/elasticsearch-setup-passwords auto -b
```

```shell
kubectl create secret generic elasticsearch-pw-elastic -n kube-logging --from-literal password=
```

---
