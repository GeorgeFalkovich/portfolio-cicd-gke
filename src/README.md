# George Falkovich Portfolio - Highly Cost-Effective CI/CD Pipeline

This repository hosts the new version of my portfolio website, [george-falkovich.com](https://george-falkovich.com), integrated with a CI/CD pipeline using Google Cloud Build for maximum cost efficiency.

## Project Overview

This project demonstrates a simple yet robust CI/CD pipeline for deploying a static website, keeping costs within a tight budget:

- **Frontend:** The portfolio site itself is located within this repository.
- **CI/CD Pipeline:** A `cloudbuild.yaml` file defines the pipeline that builds and deploys the site upon every code commit.
- **Deployment Target:** The built container image is deployed to Cloud Run, a serverless platform ideal for static websites.
- **Cost Optimization:** We leverage free tiers and cost-saving strategies to achieve a target monthly cost of around $1 (including a lightweight MySQL database).

## Features

- **Automated Build and Deployment:** Git pushes trigger the Cloud Build pipeline for effortless updates.
- **Containerized Deployment:** Ensures portability and scalability while potentially contributing to cost reduction through image layering.
- **Serverless Hosting:** Cloud Run's pay-per-use model is perfect for low-traffic websites, minimizing idle resource costs.
- **Cost-Effective Database:** If needed, consider a free-tier MySQL database on a platform with free-tier MySQL, with careful scaling to prevent exceeding free limits.

- **Live Site:**

www.george-falkovich.com
https://portfolio-cicd-4e4g74kwjq-uc.a.run.app/
