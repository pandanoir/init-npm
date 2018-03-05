# How to use

```sh
$ bash installer.sh
$ #or
$ .installer.sh
```

# Configure
When you use another template, edit `config.sh`. You can use GitHub repository as a template. Config has to include `username`, `repository_name` and `branch`.

# zsh-function
You can use init-npm as zsh-function.

```zsh
init-npm() {
    if [ "$1" = "" ]; then
        echo "please give project name."
        return 1
    fi
    current_dir=$(pwd)
    cd /path/to/init-npm
    bash ./installer.sh $current_dir"/"$1
    cd $current_dir"/"$1
}
```

Then, you can use this command as follows.

```
$ cd ~/Documents
$ init-npm new-project
```
