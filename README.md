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
# Partly Output: -----
# √ Preparing to download
# √ Downloading
# √ Cleaning up temporary files
# √ Setting up box
# Unbox successful. Sweet!

# Commands:
#   Compile:              truffle compile
#   Migrate:              truffle migrate
#   Test contracts:       truffle test
#   Run dev server:       cd app && npm run dev
#   Build for production: cd app && npm run build
```

## Make a remote git repo

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

# Run Mock-Blockchain

```bash
# Run a mock blockchain
# It problably runs genache-cli behind the scenes.
truffle develop
# Output: -----
# Truffle Develop started at http://127.0.0.1:9545/

# Accounts:
# (0) 0x09f553c19d2ab0b91c57ddac42f54e4249192215
# ...
# (9) 0x8e42f383c44fee728c4fadfd2ee451056cc8a535

# Private Keys:
# (0) 9999c35b3d3aae0be81aa6f83d457edf772e42706ae502d378d8123f740685dc
# ...
# (9) 99994ae15e9947c79eae6f298c2da4bb079305d61f7b1baee17fc495715a6b8f

# Mnemonic: bear autumn planet sort latin sound box hat age hundred expect obtain
# -----

# Compile the .sol code - this will create folder \build\ containing a .json file foreach .sol file in the \contracts\ folder
> compile
truffle(develop)> compile
# Output: -----
# Compiling .\contracts\ConvertLib.sol...
# Compiling .\contracts\MetaCoin.sol...
# Compiling .\contracts\Migrations.sol...
# Compiling .\contracts\ConvertLib.sol...
# Writing artifacts to .\build\contracts
# -----

# Deploy the contracts specified in \migrations\2_deploy_contracts.js
# to the blockchain specified in truffle-config.js
> migrate
# Partly Output: -----
# Starting migrations...
# ======================
# > Network name:    'develop'
# > Network id:      4447
# > Block gas limit: 6721975

# 1_initial_migration.js
#    Deploying 'Migrations'
#    ----------------------
#    > contract address:    0x6Fa24Db4CeF41EEE676c067f47ab0d6E83174EB0
#    > account:             0x09f553c19d2AB0B91c57DDAC42f54E4249192215
#    > total cost:          0.00569816 ETH

# 2_deploy_contracts.js
#    Deploying 'ConvertLib'
#    ----------------------
#    > contract address:    0xa53795172f5a739f3829CEB39E92ab59D7ad38Ec
#    > total cost:          0.00223582 ETH

#    Linking
#    -------
#    * Contract: MetaCoin <--> Library: ConvertLib (at address: 0xa53795172f5a739f3829CEB39E92ab59D7ad38Ec)
#    Deploying 'MetaCoin'
#    --------------------
#    > contract address:    0x3aaE633329C49b6546Cb947959Ddc173D5ed0628
#    > total cost:          0.00717144 ETH

# Summary
# =======
# > Total deployments:   3
# > Final cost:          0.01510542 ETH
# -----

# In another terminal:
cd app
npm run dev
# Partly output
# > truf-pdf-quickstart-cpt1@1.0.0 dev \truf-pdf-quickstart\cpt1\app
# > webpack-dev-server

# i ｢wds｣: Project is running at http://localhost:8080/
# i ｢wds｣: webpack output is served from /
# i ｢wds｣: Content not from webpack is served from \truf-pdf-quickstart\cpt1\app\dist
# Version: webpack 4.28.1
# WARNING in configuration
# The 'mode' option has not been set, webpack will fallback to 'production' for this value. Set 'mode' option to 'development' or 'production' to enable defaults for each environment.
# You can also set it to 'none' to disable any default behavior. Learn more: https://webpack.js.org/concepts/mode/
# -----

# Test you DApp:
# Browse to http://localhost:8080/

# Close browser
# Close the webpack webserver: Ctrl-C

# Kill the mock
> .exit
```

# Do some coding

## Prepare for ES6 files with Babel  


```bash
# https://babeljs.io/setup#installation
cd app
# Copy a babel config file to app folder from https://github.com/PacktPublishing/Truffle-Quick-Start-Guide/blob/master/chapter1/.babelrc  

npm install babel-register  --save-dev
npm install @babel/preset-env --save-dev

# We might need more babel. The demo has a lot:
# https://github.com/PacktPublishing/Truffle-Quick-Start-Guide/blob/master/chapter1/package.json
```

# Credits

* Book: [Truffle Quick Start Guide | PACKT Books](https://www.packtpub.com/web-development/truffle-quick-start-guide)

The End