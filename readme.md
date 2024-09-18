# EX-SYS

# 介绍

self build SYS project , a little env for my project 

including a self build AI env ,config system env,adding required basic ,config powershell 

# required basic 

EX系统 会有ps文件添加一些常用的class 

# config system env 

EX系统会添加需要的系统环境变量(在Windows里添加machine级的)

# powershell 

EX 系统会在profile 里添加必要的代码



# AI env

因为结构简单,EX系统可以作为ENV由AI操控管理EX-sys 然后执行操作.

1.添加新项目

告诉AI项目类别等

## eg

message:我要新建一个视频项目，帮我新建一个视频项目名称为”男人如何快速长高“

2.添加组件

告诉AI需要添加的组件等

## eg

message:帮我为视频项目男人该如何长高添加一段语音内容包含“用某某某增高剂即可长高，订购电话为xxx”

3.生成代码

告诉AI需要添加的系统代码

message:帮我install XX 项目

4.AI媒体管理

## eg 

### 1.

message: 帮我切换到xx播放列表

### 2.

message: 帮我把视频放到后台播放声音

### 3.

message:切换到下一个播放列表

### 4.

message :帮我暂停视频

### 5. 

message: 帮我打开游戏BGM

### 6.

message:我想看宅舞

### 7.

message:帮我切到紫颜-小仙女的 ”雏田：因为我，最 喜欢鸣人了“

### 8.

帮我把这首歌移动到收藏夹


## eg 

message:

4.执行操作

告诉AI要在EX-sys中执行的操作

## eg

message :帮我列出所有的未完成的项目

message :帮我删除“男人如何快速长高项目”

5.interpreter

message : 开启游戏模式

message :开启工作模式

# tip 

在EX-SYS中所有路径都是根据AI的prompt生成的所以是只读模式

EX-SYS 使用特定的路径以及特定的代码段，所以AI不会出错

EX-SYS可以通过AIprompt 添加任意功能，利用模板可以使AI知道指定的工作，然后利用prompt可以指定哪些能更改哪些不能更改

EX-SYS中的template：template
