# 📋 Quick Command Reference

## First Time Setup (Choose One Method)

### Method 1: Automated Script (Easiest!)
```bash
./setup_github.sh
```

### Method 2: Manual Commands
```bash
# 1. Initialize
git init
git add .
git commit -m "Initial commit"

# 2. Connect to GitHub (replace YOUR-USERNAME)
git remote add origin https://github.com/YOUR-USERNAME/volcano-plot-generator.git
git branch -M main
git push -u origin main
```

---

## Daily Git Commands

```bash
# Check what changed
git status

# Add all changes
git add .

# Commit with message
git commit -m "Your message here"

# Push to GitHub
git push

# Pull latest from GitHub
git pull
```

---

## Common Tasks

### Add New Feature
```bash
git checkout -b feature/new-feature
# ... make changes ...
git add .
git commit -m "Add new feature"
git push origin feature/new-feature
```

### Fix a Bug
```bash
git checkout -b fix/bug-description
# ... fix bug ...
git add .
git commit -m "Fix bug: description"
git push origin fix/bug-description
```

### Update README
```bash
# Edit README.md
git add README.md
git commit -m "Update documentation"
git push
```

---

## Emergency Commands

### Undo Last Commit (Keep Changes)
```bash
git reset --soft HEAD~1
```

### Undo Changes to a File
```bash
git checkout -- filename.html
```

### Start Over (Danger!)
```bash
git reset --hard HEAD
```

---

## GitHub Pages

### Enable
1. Go to: Settings → Pages
2. Source: main branch
3. Save

### Your URL
```
https://YOUR-USERNAME.github.io/volcano-plot-generator/
```

---

## Get Help
```bash
git help
git help <command>
```
