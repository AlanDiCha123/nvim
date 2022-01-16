# Neovim written in Lua
## _It is my own project_


This repositoty is dedicated to Linux users, because some plugins are totally incompatible or doesn't work well in Windows.

## Features

- LSP server (some servers are actually in develop) [linting code, diagnostic, code action, references, gotos, etc.]
- Autocompletion with snippets
- Colors for hexadecimal and rgb colors
- Syntax highlighting 
- Some improvements like ranger, telescope, lazygit etc.
- And more


This text you see here is *actually- written in Markdown! To get a feel
for Markdown's syntax, type some text into the left window and
watch the results in the right.

## Installation

Make sure you have created the following route. 
```sh
cd ~/.config/nvim/
```
If you don't have, execute the following lines into you terminal.
```
cd ~/.config/
mkdir nvim
```
Once you have inside the directory, clone this repository
```sh
git clone https://github.com/AlanDCha123/nvim_conf.git ~/.config/nvim
```
Install the dependencies required

```sh
pip3 install pynvim pyright typescript typescript-language-server
```
