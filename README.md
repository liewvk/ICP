# `chatbot_project`

Welcome to our new `chatbot_project` project. This is a simple chatbot app created using ICP involving the backend language Motoko and the frontend language ReactJS.

To get started, you might want to explore the project directory structure and the default configuration file. Working with this project in your development environment will not affect any production deployment or identity tokens.

<h2><b></b>PREREQUISITES:</b></h2>
<UL>
<LI>Bring Your Own Device
<LI>Supported Operating Systems
Windows 10 or 11 with WSL2 installed with Ubuntu Linux v20.04
Mac OSX 12 or above
Ubuntu Linux v20.04
NodeJs v20
<LI>Git & Github Account
<LI>IC SDK Tools, Visual Studio Code IDE
<LI>Basic Programming Languages
Javascript, HTML, CSS
</UL>
<strong> Vreate a GitHub Account</strong>

Visit https://github.com and create your Github account
Refer to this youtube to leanr how to create Github account:

https://www.youtube.com/watch?v=_28_KF9ILLM

<strong>PREPARE ENVIRONMENT FOR WINDOWS </strong>

Install Windows Subsystem Linux
- Open Command Prompt with Administrator user
- Run following command
wsl --install
- Install Ubuntu 
wsl --install -d Ubuntu

<strong>Install NODEJS</strong>

Install nvm (Node Version Manager)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash

Download and install Node.js (you may need to restart the terminal)
nvm install 20

Verifies the right Node.js version is in the environment

node -v # should print `v20.16.0`

<strong>Install IC SDK</strong>

sh -ci "$(curl -fsSL https://internetcomputer.org/install.sh)"
dfx --version

If you are using a machine running Apple silicon, you will need to have Rosetta installed. You can install Rosetta by running softwareupdate --install-rosetta in your terminal.

<strong>Create Account</strong>

dfx identity new <identity_name>

💡Identity names must use the characters ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz.-_@0123456789
ℹ️REMEMBER to backup the 24 words of account/identity seed phrase, you need this to restore back your account.
You can create multiple accounts in your device



To learn more before you start working with `chatbot_project`, see the following documentation available online:

- [Quick Start](https://internetcomputer.org/docs/current/developer-docs/setup/deploy-locally)
- [SDK Developer Tools](https://internetcomputer.org/docs/current/developer-docs/setup/install)
- [Motoko Programming Language Guide](https://internetcomputer.org/docs/current/motoko/main/motoko)
- [Motoko Language Quick Reference](https://internetcomputer.org/docs/current/motoko/main/language-manual)

If you want to start working on your project right away, you might want to try the following commands:

```bash
cd chatbot_project/
dfx help
dfx canister --help
```

## Running the project locally

If you want to test your project locally, you can use the following commands:

```bash
# Starts the replica, running in the background
dfx start --background

# Deploys your canisters to the replica and generates your candid interface
dfx deploy
```

Once the job completes, your application will be available at `http://localhost:4943?canisterId={asset_canister_id}`.

If you have made changes to your backend canister, you can generate a new candid interface with

```bash
npm run generate
```

at any time. This is recommended before starting the frontend development server, and will be run automatically any time you run `dfx deploy`.

If you are making frontend changes, you can start a development server with

```bash
npm start
```

Which will start a server at `http://localhost:8080`, proxying API requests to the replica at port 4943.

### Note on frontend environment variables

If you are hosting frontend code somewhere without using DFX, you may need to make one of the following adjustments to ensure your project does not fetch the root key in production:

- set`DFX_NETWORK` to `ic` if you are using Webpack
- use your own preferred method to replace `process.env.DFX_NETWORK` in the autogenerated declarations
  - Setting `canisters -> {asset_canister_id} -> declarations -> env_override to a string` in `dfx.json` will replace `process.env.DFX_NETWORK` with the string in the autogenerated declarations
- Write your own `createActor` constructor
