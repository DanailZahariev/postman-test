# 🧪 GitHub API Postman Collection

This project is an automated API testing suite built with **Postman** and **Newman**, using the [GitHub REST API](https://docs.github.com/en/rest).

It covers end-to-end user stories including:
- Authentication
- Creating repositories
- Creating and managing issues
- Commenting
- Closing and deleting repositories

---

## 📦 Prerequisites

### ✅ Required:
- [Node.js & npm](https://nodejs.org)
- [GitHub Account](https://github.com/)
- GitHub [Personal Access Token (PAT)](https://github.com/settings/tokens) with at least the `repo` and `user` scopes

---

## 🧑‍💻 Getting Started

### 1. Clone the Repository

```bash
https://github.com/DanailZahariev/postman-test.git
cd postman-test
```

### 2. Install Dependencies

```bash
npm install
```

### 3. Configure Your Environment

Create a `.env` file by copying the example:

```bash
cp .env.example .env
```

Then add your GitHub token:

```env
GITHUB_TOKEN=your_github_token_here
```

### 4. Run the Collection

```bash
./run.sh
```

> This will execute all requests using Newman and generate a `newman-report.html` file with results.

---

## 🪟 Windows Users – Setup Guide

If you're on Windows, follow these extra steps:

### 🔹 Install Git Bash (Recommended Terminal)

Download and install from [https://git-scm.com/](https://git-scm.com/).  
You'll use **Git Bash** to run the `run.sh` script.

### 🔹 Install Node.js (includes npm)

Download the LTS version from [https://nodejs.org/](https://nodejs.org/en/).

### 🔹 Run Setup

In Git Bash:

```bash
git clone https://github.com/YOUR_USERNAME/github-api-postman.git
cd github-api-postman
npm install
cp .env.example .env
```

Then edit `.env` with your GitHub token.

To run the tests:

```bash
./run.sh
```

---

## 📊 Test Report

- Newman generates an HTML report: `newman-report.html`
- Open it manually in your browser or run:

```bash
open newman-report.html     # macOS
xdg-open newman-report.html # Linux
start newman-report.html    # Windows
```

---

## 🧪 Running with Your Own GitHub Credentials

You only need to provide your GitHub **Personal Access Token (PAT)** in the `.env` file:

```env
GITHUB_TOKEN=your_github_token_here
```

The GitHub username will be automatically retrieved from the API and stored internally during test execution.

---

## ❌ .gitignore

This repository ignores:

```gitignore
.env
node_modules/
newman-report.html
```

---

## 🙌 Contributing

Feel free to open a pull request, suggest improvements, or fork the project.

---

## 📝 License

MIT License
