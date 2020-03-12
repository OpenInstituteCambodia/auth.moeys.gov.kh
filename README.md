# MoEYS Gluu Custom Theme
> WIP

## Getting Started
To getting started with installing this custom theme please check you server system requirement below:

### System Requirement
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
