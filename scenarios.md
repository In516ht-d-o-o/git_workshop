
## Merge conflict scenario

### Initialize new repository
```
git init
```

### Create a new folder
```
mkdir merge-conflict-demo
cd merge-conflict-demo
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

### Attempt to merge feature branch into main
```
git merge feature-branch
```

### Repository cleanup 

#### Linux
```
cd ..
rm -rf merge-conflict-demo
rm -rf .git
```

#### Windows
```
cd ..
rmdir /s /q merge-conflict-demo
rmdir /s /q .git
```



