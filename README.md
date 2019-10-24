A handy [pre-commit](http://pre-commit.com/) hook which will run Google's java
code style formatter for you on your code!

Usage:

```
repos:
- repo: https://github.com/MattHulse/google-style-precommit-hook
  rev: v1.7
  hooks:
    - id: google-style-java
```

*Note*: this file stores Google's code style formatter jar in /tmp
