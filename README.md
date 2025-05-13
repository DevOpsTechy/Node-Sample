# Hello Node App 🚀

This is a minimal Node.js application that starts a web server and responds with `"Hello"`.

The app is containerized using Docker, and includes a GitHub Actions workflow to:
- Build the Docker image
- Scan the image for vulnerabilities using [Trivy](https://github.com/aquasecurity/trivy)

---

## 📁 Project Structure

.
├── app.js # Node.js web server
├── Dockerfile # Docker image definition
└── .github/
└── workflows/
└── docker-trivy.yml # GitHub Actions workflow

Run with Docker
# Build the Docker image
docker build -t hello-node-app .

# Run the container
docker run -p 3000:3000 hello-node-app

Trivy Security Scan via GitHub Actions

This repository includes a GitHub Actions workflow that:

    Builds the Docker image on every push or pull request to main

    Scans the image using Trivy

    Fails the workflow if vulnerabilities of HIGH or CRITICAL severity are found

You can find the workflow in:
.github/workflows/docker-trivy.yml

Requirements

    Node.js 18+

    Docker

    GitHub repository (for CI via GitHub Actions)
