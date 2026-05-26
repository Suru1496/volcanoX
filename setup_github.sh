#!/bin/bash

# Volcano Plot Generator - GitHub Setup Script
# This script automates the process of pushing your project to GitHub

echo "🌋 Volcano Plot Generator - GitHub Setup"
echo "========================================"
echo ""

# Check if git is installed
if ! command -v git &> /dev/null
then
    echo "❌ Git is not installed!"
    echo "Please install Git from: https://git-scm.com/downloads"
    exit 1
fi

echo "✅ Git is installed"
echo ""

# Get GitHub username
read -p "Enter your GitHub username: " github_username

if [ -z "$github_username" ]; then
    echo "❌ Username cannot be empty"
    exit 1
fi

# Repository name
repo_name="volcano-plot-generator"

echo ""
echo "📝 Setup Summary:"
echo "   GitHub Username: $github_username"
echo "   Repository Name: $repo_name"
echo "   Repository URL: https://github.com/$github_username/$repo_name"
echo ""

read -p "Does this look correct? (y/n): " confirm

if [ "$confirm" != "y" ] && [ "$confirm" != "Y" ]; then
    echo "Setup cancelled."
    exit 0
fi

echo ""
echo "🚀 Starting setup..."
echo ""

# Initialize git if not already initialized
if [ ! -d .git ]; then
    echo "📦 Initializing Git repository..."
    git init
    echo "✅ Git initialized"
else
    echo "✅ Git already initialized"
fi

# Configure git user if not set (optional)
if [ -z "$(git config user.name)" ]; then
    read -p "Enter your name for Git commits: " git_name
    git config user.name "$git_name"
fi

if [ -z "$(git config user.email)" ]; then
    read -p "Enter your email for Git commits: " git_email
    git config user.email "$git_email"
fi

# Check if we need to rename to index.html for GitHub Pages
if [ -f "volcano_plot_generator.html" ] && [ ! -f "index.html" ]; then
    read -p "Rename to index.html for GitHub Pages? (recommended) (y/n): " rename_choice
    if [ "$rename_choice" = "y" ] || [ "$rename_choice" = "Y" ]; then
        mv volcano_plot_generator.html index.html
        echo "✅ Renamed to index.html"
    fi
fi

# Add all files
echo ""
echo "📝 Adding files to Git..."
git add .

# Create initial commit
echo "💾 Creating initial commit..."
git commit -m "Initial commit: Volcano Plot Generator for biologists"

# Check if remote already exists
if git remote | grep -q "origin"; then
    echo "⚠️  Remote 'origin' already exists"
    read -p "Do you want to replace it? (y/n): " replace_remote
    if [ "$replace_remote" = "y" ] || [ "$replace_remote" = "Y" ]; then
        git remote remove origin
        git remote add origin "https://github.com/$github_username/$repo_name.git"
        echo "✅ Remote updated"
    fi
else
    git remote add origin "https://github.com/$github_username/$repo_name.git"
    echo "✅ Remote added"
fi

# Set main branch
git branch -M main

echo ""
echo "🚀 Pushing to GitHub..."
echo ""
echo "⚠️  You will be prompted for your GitHub credentials"
echo "    Use your GitHub Personal Access Token as the password"
echo "    (Not your GitHub password!)"
echo ""

# Push to GitHub
if git push -u origin main; then
    echo ""
    echo "🎉 SUCCESS! Your project is now on GitHub!"
    echo ""
    echo "📍 Repository URL:"
    echo "   https://github.com/$github_username/$repo_name"
    echo ""
    echo "🌐 To enable GitHub Pages:"
    echo "   1. Go to: https://github.com/$github_username/$repo_name/settings/pages"
    echo "   2. Under 'Source', select 'main' branch"
    echo "   3. Click 'Save'"
    echo "   4. Your site will be at: https://$github_username.github.io/$repo_name/"
    echo ""
    echo "⭐ Don't forget to star your own repository!"
else
    echo ""
    echo "❌ Push failed!"
    echo ""
    echo "Common fixes:"
    echo "1. Make sure you created the repository on GitHub first"
    echo "   Go to: https://github.com/new"
    echo ""
    echo "2. Use a Personal Access Token instead of password"
    echo "   Create one at: https://github.com/settings/tokens"
    echo "   Check the 'repo' permission"
    echo ""
    echo "3. Try again with: git push -u origin main"
fi
