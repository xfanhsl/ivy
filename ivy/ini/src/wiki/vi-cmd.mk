---
title: VI快捷命令
date: '2018-08-25'
dirmark: '__dir__'
tags:
  - wiki
  - vi
---

## 常用命令 ##
:++
	命令 | 描述 
	------------------------------
	0	| 将光标定位在一行的开头
	$	| 将光标定位在一行的末尾
	w	| 定位到下一个单词
	b	| 定位到上一个单词
	{   | 移动到段落开头
	}    |移动到段落结束
	nG   | 移动到第 n 行
	CTRL+d   | 向下滚动半屏(down)
	CTRL+f   | 向下滚动全屏(forward)
	CTRL+u   | 向上滚动半屏(up)
	CTRL+b   | 向上滚动整屏(back)
	
	d^   | 删除从当前光标到行首的字符
	d$   | 删除从当前光标到行尾的字符
	D    | 删除从当前光标到行尾的字符
	dd   | 删除当前光标所在的行
	
	yy  | 复制当前行
	nyy	| 复制n行
	p	| 将复制的文本粘贴到光标后面
	
	u	| 撤销上次操作，再次按 'u' 恢复该次操作
	/   | 向下查找 输入 n 命令可以按相同的方向继续查找，输入 N 命令可以按相反的方向继续查找
	?   | 向上查找 输入 n 命令可以按相同的方向继续查找，输入 N 命令可以按相反的方向继续查找

	:f   | filename	将文件重命名为 filename
	:w   | filename	保存修改到 filename
	:f   | 以百分号(%)的形式显示当前光标在文件中的位置、文件名和文件的总行数
	
	:set ic	  	| 搜索时忽略大小写
	:set ai	  	| 设置自动缩进（自动对齐）
	:set noai 	| 取消自动缩进（自动对齐）
	:set nu	  	| 显示行号
	:set sw	  	| 设置缩进的空格数，例如，将缩进空格数设置为4：:set sw=4
	:set ws	  	| 循环搜索：如果直到文件末尾也没有查找到指定字符，那么会回到开头继续查找
    :set wm     | 设置自动换行，例如，设置距离边际2个字符时换行：:set wm=2 
	:set ro	  	| 将文件类型改为只读
	:set term   | 输出终端类型
	:set bf   	| 忽略输入的控制字符，如 BEL(响铃)、BS(退格)、CR(回车)等     

## 运行命令 ##
:::
	切换到命令模式，再输入 ! 命令即可运行 Linux 命令，格式 :! command
	:! ls

## [鸟哥Linux命令](http://linux.vbird.org/linux_basic/0310vi.php) ## 
