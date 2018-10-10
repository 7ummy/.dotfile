# .dotfile
Backup, restore, and sync the prefs and settings for your toolbox. Your dotfiles might be the most important files on your machine.

## 来源:
* https://github.com/mathiasbynens/dotfiles
* https://github.com/amix/vimrc

## 安装:
```git clone https://github.com/7ummy/.dotfiles.git && cd .dotfiles && source bootstrap.sh```

## 更新
```set -- -f; source bootstrap.sh```

## 指定路径
If `~/.path` exists, it will be sourced along with the other files, before any feature testing (such as detecting which version of ls is being used) takes place.

Here’s an example `~/.path` file that adds `/usr/local/bin` to the $PATH:

```
export PATH="/usr/local/bin:$PATH"
```

## 定制git提交
If `~/.extra` exists, it will be sourced along with the other files. You can use this to add a few custom commands without the need to fork this entire repository, or to add commands you don’t want to commit to a public repository.

My `~/.extra` looks something like this:

```
# Git credentials
# Not in the repository, to prevent people from accidentally committing under my name
GIT_AUTHOR_NAME="miyang"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="605847529@qq.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```
## 配置macOS
When setting up a new Mac, you may want to set some sensible macOS defaults:

```source ~/.macos```
