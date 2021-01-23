# 说明
这个项目保存了 mac 下开发工具的配置

# tmux 的初始化
* 安装 tmux 2.8
  * 新版本的 tmux 配置项发生了改变, 现有的配置文件不兼容. 
  * 如果要使用 brew 安装 tmux 2.8,  那么需要切换 brew-core 的分支. 参考: https://www.linuxidc.com/Linux/2019-06/159018.htm

* 安装 tpm
  * 参考: https://github.com/tmux-plugins/tpm
 
# vim 和 neovim 的初始化
* brew 安装 python 相关依赖 (vim 插件 YCM 依赖 Python )
  * 安装 pip
    * 可能需要 get-pip 工具脚本来安装 pip
  * pip install neovim

* brew 安装 neovim
* 安装 vim-plug for vim
~~~ 
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
~~~

* 安装 vim-plug for neovim

~~~
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
~~~


# 其他工具
* gui file compare 
  * 需要 xcode
~~~
opendiff source_file target_file
~~~

* 窗口控制工具 
Spectacle 
  * 键位设置
  ![shortcuts](spectacle/shortcuts.png)


* gif 截屏工具
LICEcap
