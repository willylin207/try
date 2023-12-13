# try
Simple bash shell script that lets you run a command as many times as you want.

## Installation
Rename the `try.sh` file as `try` and add it to some folder containing scripts:
```bash
mkdir ~/bin
mv ./try.sh ~/bin/try
```

Add a line prepending the new scripts folder to PATH in ~/.bashrc:
```bash
echo "export PATH=~/bin:\$PATH:" >> ~/.bashrc
```

Restart your shell. You can delete any leftover files from cloning this repo if you cloned it.

## Usage
```bash
try <number of executions> <command to execute> [args...]
```
