# Terminal Configuration

I use this project to configure my terminal and tools across workstations.

It works with `zsh` and you need to create the following `~/.zshrc` file:

```sh
MODULES=('terminal' 'git' 'go' 'vscode') \ # list controls which modules are activated
source <path>/.termconf/source-me.zsh # adjust <path> to the folder that contains .termconf
```

If you don't like the available modules or need to add additional company-specific ones, then you can
include modules from your plugin termconf project.

```sh
MODULES=('terminal' 'git' 'go' 'vscode') \
source <path>/.termconf/source-me.zsh 

# adds additional modules
CONFIG_ROOT="<path to other termconf>" MODULES=('external') \
source <path>/.termconf/source-me.zsh # use the original source-me it will know what to do
```


## Modules

* direnv
* git
* go
* python
* rbenv
* terminal
* vscode
* ffmpeg
