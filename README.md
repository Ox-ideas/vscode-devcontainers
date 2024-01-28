# :whale: vscode-devcontainers

A personal collection of `vscode` *devcontainers* for various tech stacks bundled with all the SDKs, Tools, and VSCode extensions you need.

### How to use - 

Clone using the web URL with the following format:
```
git clone -b <branchname> --single-branch <remote-repo-url> <destination-folder>
```

> [!NOTE]
> You can choose the development container by changing the branch named after the target tech stack. *ie. dotnet5*

Here's an example to spin up a devcontainer for .NET 5:
```
git clone -b dotnet5 --single-branch https://github.com/Ox-ideas/vscode-devcontainers.git sample-net5-devcontainer
```

**Available stacks -**
- .NET 5
- Gatsby
- Next.js

More to come! :melon: :ox:

### Removing git entirely

Git stores all of its data, and most of its configuration, in a folder named `.git`. Removing this folder will completely remove Git version tracking from the directory, but it will also remove all Git version history.

<!-- ![.git folder](/images/git-folder.png | width=20%) -->
<img src="/images/git-folder.png" width="20%">

The .git folder is hidden though, so the easiest way to delete it is through your terminal.

```
rm -rf .git
```

<sup>For windows -</sup>
```
Remove-Item -Recurse -Force .git
```


### Cloning project into the development container

In Visual Studio Code, press F1 to bring up the command box.

Select either, `Reopen in Container` or `Rebuild and Reopen in Container`.

<!-- ![vscode F1](/images/vscode-F1.png | width=70%) -->
<img src="/images/vscode-F1.png" width="70%">

After the development container has completed the spin up process, open a terminal and clone any project using git.

> [!WARNING]
> Make sure you are in the root folder and that the cloned project have similar tech stack as the container!
