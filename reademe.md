# Single File Project Setup

Template to setup simple coding environment in C.

Using VSCode and Dev Containers.

## Requirements

### [Docker](https://www.docker.com/)

This is needed for the makefile to work properly [#Developing-inside-a-Container](https://code.visualstudio.com/docs/devcontainers/containers).

Alternatively you can run this bare-metal on UNIX-base OS with [make](https://www.gnu.org/software/make/) and [gcc](https://gcc.gnu.org/)

## Start in a Container

> open a location of .c files as a folder!!

VSCode should prompt you to build and open the container when it sees the [.devcontainer](./.devcontainer/devcontainer.json) file

If not use `Crtl + Shift + P` to open command prompt and look for the `Dev container: Rebuild and Reopen in Container`

> vscode will try to go through the options as you type and show the matching ones.
>
> Just write `reopen` and you should see the option to do so.

## Run Code

Use `Crtl + Shift + B`.

- [check vscode tasks](https://code.visualstudio.com/docs/editor/tasks)

## Reuse

Just copy the `.devcontainer`, `.vscode` and `makefile` into your new project folder.

> Better is to keep this template in a zip/7.z/tar format to keep it from changing and unpack to the new location
