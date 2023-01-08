# William's dotfiles

My dotfiles are managed by [chezmoi](https://www.chezmoi.io/)

# Before installing

## Dependencies

- git only !

Chezmoi will install brew and brew will install a bunch of dependencies.
Some other tools will be installed manually (i will add them to externals in the future)

## Custom variables

Chezmoi uses templates to be able to have different dotfiles between multiple machines (see [Manage machine-to-machine differences](https://www.chezmoi.io/user-guide/manage-machine-to-machine-differences/))

For the installation to work you have to provide some config file containing your variables in `.config/chezmoi/chezmoi.toml` :

```toml
[data]
firstName = "<firstname>"
name = "<name>"
fullName = "<fullName>"
email = "<email>"
githubUsername = "<githubUsername>"
ngrok2Token = "<ngrok2Token>"
ghOauthToken = "<ghOauthToken>"
wakatimeApiKey = "<wakatimeApiKey>"
npmToken = "<npmToken>"
gpgSigningKey = "<gpgSigningKey>"
```

In the future I will update it to use prompts to automatically generate this file.

# Installation

## Chezmoi initialization

To install these dotfiles on a brand new mac you can run :

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --purge-binary --apply williamgoulois
```

## Other installations

### PNPM

```bash
curl -fsSL https://get.pnpm.io/install.sh | sh -
```

#### List of tools to add to pnpm afterwards

I install all global javascript packages with pnpm to be able to use them independently of node version.
You can find a list of all your global pnpm dependencies with

```bash
pnpm list -g --json | jq -r '.[] | .dependencies | .[] | .from'
```

This command uses `jq` that was installed via Homebrew

And on the new machine you can add all of them :

```bash
pnpm add -g <pkg_1> <pkg_2> ...
```

NB: There may be a better way (using `--json` when you list on previous machine maybe ?) but I didn't want to loose to much time on that.

### Lunarvim (master)

```bash
bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)
```

sudo spctl --global-disable

brew services start yabai

rustup => cargo
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
.cargo => .crates.toml .crates2.json env

=> cargo install git-graph selene taplo-cli

pnpm add neovim tree-sitter-cli => lunarvim bad

$(brew --prefix)/opt/fzf/install => fzf installation
