# oh-my-zsh

## Installation steps

* Download and install Zsh
* Download and install Oh-My-Zsh (https://github.com/robbyrussell/oh-my-zsh)

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

-- or --

sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```

* Download and install powerlevel9k theme (https://github.com/romanhaa/powerlevel9k)

```
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
```

* Download and install zsh-autosuggestions (https://github.com/zsh-users/zsh-autosuggestions)

```
git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
```

* Download and install zsh-synax-highlighting (https://github.com/zsh-users/zsh-syntax-highlighting)

```
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

* Edit ~/.zshrc file to choose the environment (machine)

```
# machine="cluster"
# machine="local_mac"
```
