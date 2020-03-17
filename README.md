[![MoEYS Gluu Custom Theme](docs/img/cover.png)](#readme)

# MoEYS Gluu Custom Theme
[![Gluu Server: v4.1](https://badgen.net/badge/Gluu%20Server/v4.1/green)](https://gluu.org/docs/ce/4.1/)
[![repo status: wip](https://badgen.net/badge/repo%20status/WIP/yellow)](https://github.com/socheatsok78/moeys-gluu-theme/issues)

This is a custom Gluu theme for MoEYS Identity Service https://auth.moeys.gov.kh

> see https://gluu.org/docs/ce/4.1/operation/custom-design/ for more information

#### Folder structures:
- `base`: the base folder is the default un-modified page copied from Gluu's jetty war use for references
- `src`: the fully customized pages based on the content from `base` folder
- `bin`: this folder contain cli tools for copying default template and installing template

## Getting Started
To getting started with installing this custom theme login to the Gluu `chroot` environment:

```sh
sudo /sbin/gluu-serverd login
```

Then clone this repo to your Gluu `chroot` env:
```sh
$ cd ~ # Change directory to the home directory
$ git clone https://github.com/socheatsok78/moeys-gluu-theme.git
```

### System Requirement
Please check you server system requirement below:
The `make` and `stow` command are required to be installed on your system before continue:

```sh
$ sudo apt install make stow
```

### Install theme
To install this theme simply run the following comman:

```sh
$ sudo make
```

This will create a symbolic link with `src` folder and Gluu themplate foler.

> Please note that installed template will create symbolic link from `src` to your Gluu installation.

### Un-Install theme
To un-install this theme simply run the following comman:

```sh
$ sudo make uninstall
```

This will remove the template from your current Gluu installation.


### Post-Install
After successfully install the theme, run the following command:

```sh
$ chown -R jetty:jetty /opt/gluu/jetty/*/custom/pages/
$ chmod -R a-x+rX /opt/gluu/jetty/*/custom/pages/
```

## :warning: Warning
Upgrade will not apply any changes to the applied theme folder. After installing an upgrade package, the administrator should reapply changes manually.
This theme may or may not compatible with your current installation of Gluu.

> see https://gluu.org/docs/ce/4.1/operation/custom-design/#full-customization warning section

### License
[![BSD 3-Clause License](https://img.shields.io/github/license/socheatsok78/angkorgreen-biz-docs)](LICENSE)
