# 🚀 GitHub Setup Guide

Follow these steps to push your Volcano Plot Generator to GitHub!

## Prerequisites

1. **Git installed** on your computer
   - Download from: https://git-scm.com/downloads
   - To check if installed: Open terminal/command prompt and type `git --version`

2. **GitHub account**
   - Create one at: https://github.com/signup

---

## 📝 Step-by-Step Instructions

### Step 1: Create a New Repository on GitHub

1. Go to https://github.com
2. Click the **"+"** icon (top right) → **"New repository"**
3. Fill in the details:
   - **Repository name**: `volcano-plot-generator`
   - **Description**: "Publication-ready volcano plot generator for biologists"
   - **Public** (so others can use it)
   - ❌ **DON'T** check "Add a README" (we already have one)
   - ❌ **DON'T** add .gitignore or license (we have those too)
4. Click **"Create repository"**

### Step 2: Initialize Git in Your Project

Open Terminal (Mac/Linux) or Command Prompt/Git Bash (Windows), then:

```bash
# Navigate to your project folder
cd /path/to/volcano-plot-generator

# Initialize git repository
git init

# Add all files to git
git add .

# Create your first commit
git commit -m "Initial commit: Volcano plot generator"
```

### Step 3: Connect to GitHub

Replace `YOUR-USERNAME` with your actual GitHub username:

```bash
# Add GitHub repository as remote
git remote add origin https://github.com/YOUR-USERNAME/volcano-plot-generator.git

# Verify the remote was added
git remote -v
```

### Step 4: Push to GitHub

```bash
# Push your code to GitHub
git branch -M main
git push -u origin main
```

**If prompted**, enter your GitHub username and password (or personal access token).

---

## 🌐 Enable GitHub Pages (Optional but Recommended!)

Make your tool accessible via a URL!

1. Go to your repository on GitHub
2. Click **Settings** tab
3. Scroll down to **Pages** section (left sidebar)
4. Under **Source**, select:
   - Branch: `main`
   - Folder: `/ (root)`
5. Click **Save**
6. Wait 1-2 minutes
7. Your site will be live at: `https://YOUR-USERNAME.github.io/volcano-plot-generator/`

**Important**: Rename `volcano_plot_generator.html` to `index.html` for GitHub Pages:

```bash
# In your project folder
mv volcano_plot_generator.html index.html
git add .
git commit -m "Rename to index.html for GitHub Pages"
git push
```

---

## 🔐 GitHub Authentication (If You Get Errors)

If you can't push due to authentication:

### Option 1: Personal Access Token (Recommended)

1. Go to GitHub → Settings → Developer settings → Personal access tokens → Tokens (classic)
2. Click **"Generate new token"** → **"Generate new token (classic)"**
3. Give it a name: "Volcano Plot Generator"
4. Check: `repo` (all repo permissions)
5. Click **"Generate token"**
6. **COPY THE TOKEN** (you won't see it again!)
7. When pushing, use the token as your password

### Option 2: SSH Key

Follow GitHub's guide: https://docs.github.com/en/authentication/connecting-to-github-with-ssh

---

## 🎯 Quick Commands Reference

```bash
# Check status of your files
git status

# Add all changes
git add .

# Commit changes
git commit -m "Your message here"

# Push to GitHub
git push

# Pull latest changes from GitHub
git pull

# See commit history
git log
```

---

## ✅ Verify Everything Worked

1. Go to `https://github.com/YOUR-USERNAME/volcano-plot-generator`
2. You should see:
   - ✅ README.md displayed on the home page
   - ✅ volcano_plot_generator.html file
   - ✅ examples folder with sample data
   - ✅ LICENSE and .gitignore files

---

## 🐛 Troubleshooting

### "Permission denied"
- Make sure you're using the correct username
- Try using a personal access token instead of password

### "Repository not found"
- Check the repository URL is correct
- Make sure the repository exists on GitHub

### "Failed to push"
- Try: `git pull origin main --rebase`
- Then: `git push origin main`

---

## 🎉 You're Done!

Share your repository link with the world:
`https://github.com/YOUR-USERNAME/volcano-plot-generator`

And if you enabled GitHub Pages:
`https://YOUR-USERNAME.github.io/volcano-plot-generator/`

---

## 📱 Next Steps

1. **Add a screenshot** to make README prettier
2. **Star your own repo** (why not! 😄)
3. **Share on social media** / with colleagues
4. **Add topics** to your repo: biology, bioinformatics, data-visualization, research-tool

---

Need help? Open an issue or reach out!
