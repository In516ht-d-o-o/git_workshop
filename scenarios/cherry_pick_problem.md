# WORK IN PROGRESS

# Cherry pick problem scenario

### Initialize new repository
```
git init
```

### Create and initialize repository
```
mkdir cherry-pick-problems
cd cherry-pick-problems
```

### Create initial shared code
```
echo "class Calculator:" > calculator.py
echo "    def add(self, a, b):" >> calculator.py
echo "        return a + b" >> calculator.
echo "" >> calculator.py
git add calculator.py
git commit -m "Initial calculator with add method"
```

### Create main development branch
```
git checkout -b develop
```

### Feature A: Add multiplication and shared utilities
```
git checkout -b feature-multiply
echo "    def multiply(self, a, b):" >> calculator.py
echo "        from utils import validate_numbers" >> calculator.py
echo "        validate_numbers(a, b)" >> calculator.py
echo "        return a * b" >> calculator.py
echo "" >> calculator.py
echo "# Shared utility function" >> utils.py
echo "def validate_numbers(a, b):" >> utils.py
echo "    if not isinstance(a, (int, float)) or not isinstance(b, (int, float)):" >> utils.py
echo "        raise ValueError('Both arguments must be numbers')" >> utils.py
git add calculator.py
git add utils.py
git commit -m "Add multiply method and validation utility"
git checkout develop
git merge --no-ff feature-multiply -m "Feature A"
```

### Feature B: Add division (also uses the shared utility)
```
git checkout -b feature-divide
# Let's add the division
echo "    def divide(self, a, b):" >> calculator.py
echo "        from utils import validate_numbers" >> calculator.py
echo "        validate_numbers(a, b)" >> calculator.py
echo "        if b == 0:" >> calculator.py
echo "            raise ValueError('Cannot divide by zero')" >> calculator.py
echo "        return a / b" >> calculator.py
echo "" >> calculator.py
git add calculator.py
git commit -m "Add divide method with validation"
git checkout develop
git merge --no-ff feature-divide -m "Feature B"
```

### Cherry-pick
Manager says: "We need ONLY the divide feature in production immediately"

```
git checkout master
git cherry-pick feature-divide~0
```


### Repository cleanup 

#### Linux
```
cd ..
rm -rf cherry-pick-problems
rm -rf .git
```

#### Windows
```
cd ..
rmdir /s /q cherry-pick-problems
rmdir /s /q .git
```
