<h1 align="center">
  Python3 Cross Wrapper
</h1>

<p align="center">
  <img src="https://img.shields.io/badge/build-passing-brightgreen.svg?style=flat"/>
  <img src="https://img.shields.io/github/license/rog-net/Python3_Cross_Wrapper.svg?style=flat"/>
</p> 

Python3交叉封装器，在x86_64架构的GNU/Linux下利用Docker与Vagrant，模拟不同操作系统和异指令集架构操作系统，对python3脚本使用pyinstaller封装对应的二进制可执行文件  
### 目前支持  
## Linux 
* arm64 
* armel 
* armhf 
* amd64 
* i386 
* mips 
* mipsel 
* mips64le 
* ppc64le 
* s390x
## FreeBSD  
* amd64  


### Linux生成后二进制文件运行环境GLIBC版本需在2.24以上

# 需求
不同操作系统之间需要不同的封装脚本  
FreeBSD安装python模块推荐优先使用pkg install py37-<名称>  
需要在项目文件夹下分别创建封装脚本`wrapper/Linux.sh`和`wrapper/FreeBSD-amd64.sh`  

# 开始

## 依赖
`virtualbox-6.0`  
`docker-ce`  
`vagrant`  

vagrant插件:  
`vagrant-env`  

#### 也可以运行`./pcp3 -f`在Debian10下一键安装Vagrant Docker qemu-static-user Virtualbox等软件进行初始化，也可以自行安装  
`chmod +x pcp3`  
`./pcp3 -f`  

### 记得给需要运行的sh文件添加可执行权限

### 开始构建Docker镜像
`./pcp3 -b`  
可以在另一会话运行`./pcp3 -l`和`tail -f build_out/*`检测进度  
构建和封装分别用时30分钟到1小时不等

### 封装python3脚本
在source_code下导入项目文件夹  
`cd source_code`  
`git clone https://github.com/xxx/xxx`  
`cd ../`  

执行封装操作，第一个运行参数为项目名称，第二个为项目路径  
`./pcp3 -r example_test source_code/example/`  
可以在另一会话运行`./pcp3 -l`和`tail -f run_out/*`检测进度  
**封装结束后，所有可执行文件均在output_bin下以zip压缩文件包的形式出现，需解压后运行** 

### 清除封装输出信息
`./pcp3 -c`
