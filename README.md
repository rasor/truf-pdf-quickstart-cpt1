# Truffle Quickstart PDF

This repo is build from followin "Truffle Quick Start Guide"

* Book: [Truffle Quick Start Guide | PACKT Books](https://www.packtpub.com/web-development/truffle-quick-start-guide)
* Code: [PacktPublishing/Truffle-Quick-Start-Guide](https://github.com/PacktPublishing/Truffle-Quick-Start-Guide)

# Install

```bash
# Install truffle
npm install -g truffle
truffle -v
# v5.0.1

# make a project folder
mkdir truffle-demo && cd truffle-demo
mkdir cpt1 && cd cpt1

# make a truffle project
truffle unbox webpack
```

Output: 

```bash
- Preparing to download
√ Preparing to download
- Downloading
√ Downloading
- Cleaning up temporary files
√ Cleaning up temporary files
- Setting up box
√ Setting up box

Unbox successful. Sweet!

Commands:

  Compile:              truffle compile
  Migrate:              truffle migrate
  Test contracts:       truffle test
  Run dev server:       cd app && npm run dev
  Build for production: cd app && npm run build
```

Make a remote git repo

```bash
# git enable
git init
git add .
git commit -m "init"

# Manually create a git repo and then do:
git remote add origin https://github.com/rasor/truf-pdf-quickstart-cpt1.git
git push -u origin master

# start vscode
code .
```

The End