# 1. git简介

![git操作通用流程](https://user-gold-cdn.xitu.io/2018/4/25/162fcc0987bf1c0a?imageView2/0/w/1280/h/960/ignore-error/1)

主要涉及到四个关键点：

1. 工作区：本地电脑存放项目文件的地方，比如learnGitProject文件夹；
2. 暂存区（Index/Stage）：在使用git管理项目文件的时候，其本地的项目文件会多出一个.git的文件夹，将这个.git文件夹称之为版本库。其中.git文件夹中包含了两个部分，一个是暂存区（Index或者Stage）,顾名思义就是暂时存放文件的地方，通常使用add命令将工作区的文件添加到暂存区里；
3. 本地仓库：.git文件夹里还包括git自动创建的master分支，并且将HEAD指针指向master分支。使用commit命令可以将暂存区中的文件添加到本地仓库中；
4. 远程仓库：不是在本地仓库中，项目代码在远程git服务器上，比如项目放在github上，就是一个远程仓库，通常使用clone命令将远程仓库拷贝到本地仓库中，开发后推送到远程仓库中即可；

更细节的来看：

![git几个核心区域间的关系](https://user-gold-cdn.xitu.io/2018/4/25/162fcc0e7e711dc7?imageView2/0/w/1280/h/960/ignore-error/1)

日常开发时代码实际上放置在工作区中，也就是本地的XXX.java这些文件，通过add等这些命令将代码文教提交给暂存区（Index/Stage），也就意味着代码全权交给了git进行管理，之后通过commit等命令将暂存区提交给master分支上，也就是意味打了一个版本，也可以说代码提交到了本地仓库中。另外，团队协作过程中自然而然还涉及到与远程仓库的交互。

因此，经过这样的分析，git命令可以分为这样的逻辑进行理解和记忆：

1. git管理配置的命令；

   **几个核心存储区的交互命令：**

2. 工作区与暂存区的交互；

3. 暂存区与本地仓库（分支）上的交互；

4. 本地仓库与远程仓库的交互。

# 2. git配置命令

> 查询配置信息

1. 列出当前配置：`git config --list`;
2. 列出repository配置：`git config --local --list`;
3. 列出全局配置：`git config --global --list`;
4. 列出系统配置：`git config --system --list`;

> 第一次使用git，配置用户信息

1. 配置用户名：`git config --global user.name "your name"`;
2. 配置用户邮箱：`git config --global user.email "youremail@github.com"`;

> 其他配置

1. 配置解决冲突时使用哪种差异分析工具，比如要使用vimdiff：`git config --global merge.tool vimdiff`;
2. 配置git命令输出为彩色的：`git config --global color.ui auto`;
3. 配置git使用的文本编辑器：`git config --global core.editor vi`;

# 3. 工作区上的操作命令

> 新建仓库

1. 将工作区中的项目文件使用git进行管理，即创建一个新的本地仓库：`git init`；
2. 从远程git仓库复制项目：`git clone `，如：git clone git://github.com/wasd/example.git;克隆项目时如果想定义新的项目名，可以在clone命令后指定新的项目名：`git clone git://github.com/wasd/example.git mygit`；

> 提交

1. 提交工作区所有文件到暂存区：`git add .`
2. 提交工作区中指定文件到暂存区：`git add   ...`;
3. 提交工作区中某个文件夹中所有文件到暂存区：`git add [dir]`;


作者：你听___
链接：https://juejin.im/post/5ae072906fb9a07a9e4ce596
来源：掘金
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。作者：你听___
链接：https://juejin.im/post/5ae072906fb9a07a9e4ce596
来源：掘金
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。

作者：你听___
链接：https://juejin.im/post/5ae072906fb9a07a9e4ce596
来源：掘金
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。

作者：你听___
链接：https://juejin.im/post/5ae072906fb9a07a9e4ce596
来源：掘金
著作权归作者所有。商业转载请联系作者获得授权，非商业转载请注明出处。