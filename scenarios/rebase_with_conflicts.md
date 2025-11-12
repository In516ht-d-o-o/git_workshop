
## Rebase with conflicts scenario

### Initialize new repository
```
git init
```

### Create a new folder
```
mkdir rebase-conflict-demo
cd rebase-conflict-demo
```

### Create initial file and commit
```
echo "Line 1: Original content" > conflict-file.txt
echo "Line 2: More original content" >> conflict-file.txt
git add conflict-file.txt
git commit -m "Initial commit with original content"
```

### Create and switch to feature branch
```
git checkout -b feature-branch
```

### Modify the file on feature 
```
echo "Line 1: Feature branch modification" > conflict-file.txt
echo "Line 2: More original content" >> conflict-file.txt
echo "Line 3: Added by feature branch" >> conflict-file.txt
git add conflict-file.txt
git commit -m "Modified content in feature branch"
```

```
echo "Line 4: Added by feature branch" >> conflict-file.txt
echo "Line 5: Added by feature branch" >> conflict-file.txt
echo "Line 6: Added by feature branch" >> conflict-file.txt
git add conflict-file.txt
git commit -m "More modified content in feature branch"
```

### Switch back to main branch
```
git checkout master
```

### Modify the same lines on main branch
```
echo "Line 1: Main branch modification" > conflict-file.txt
echo "Line 2: More original content" >> conflict-file.txt
echo "Line 3: Added by main branch" >> conflict-file.txt
git add conflict-file.txt
git commit -m "Modified content in main branch"
```

```
echo "Line 4: More original content" >> conflict-file.txt
echo "Line 5: Added by main branch" >> conflict-file.txt
git add conflict-file.txt
git commit -m "More modified content in main branch"
```

### Switch to feature branch
```
git checkout feature-branch
```

### Rebase feature branch onto main branch
```
git rebase master
```
Now resolve merge conflicts to complete the rebase

### Repository cleanup 

#### Linux
```
cd ..
rm -rf rebase-conflict-demo
rm -rf .git
```

#### Windows
```
cd ..
rmdir /s /q rebase-conflict-demo
rmdir /s /q .git
```
