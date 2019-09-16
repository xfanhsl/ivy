---
title: Monk文档手册
date: '2019-08-15'
dirmark: '__dir__'
tags:
  - wiki
  - monk
---

:insert fulltoc
:insert footnotes
:footnote 1
		This is a footnote demo.

----------
# [官方文档](https://darrenmulholland.com/docs/monk/tags.html) #

----------
# MK文档效果 #
:!! [ warning ]
	:p ||
		*italic*
		**bold**
		***bold and italic***
		`code sample`
		[hyper link](http://supercline.com)
		![image link](../assets/images/clineeditor.jpg)

		:blockquote
			- block unorder list 1
			- block unorder list 2

			#. block order list 1
			#. block order list 2
		:>>

	:p ||
	    These linebreaks
	    will be preserved.

	:p
	    These linebreaks
	    will be not preserved.

	:h1 ||
		链接
		标题

	:h1
		链接
		标题

	# H1标题 #
	## H2标题 ##
	### H3标题 ###

	[[ Term 1 ]]
		This is the definition of the first term.

----------
# MK关键字 #
:::
	:p ||
		*italic*
		**bold**
		***bold and italic***
		`code sample`
		[hyper link](http://supercline.com)
		![image link](../assets/images/clineeditor.jpg)

		:blockquote
			- block unorder list 1
			- block unorder list 2

			#. block order list 1
			#. block order list 2
		:>>

	:p ||
	    These linebreaks
	    will be preserved.

	:p
	    These linebreaks
	    will be not preserved.

	:h1 ||
		链接
		标题

	:h1
		链接
		标题

	# H1标题 #
	## H2标题 ##
	### H3标题 ###

	[[ Term 1 ]]
		This is the definition of the first term.

----------
# MK特殊标记 #
:pre
	:insert fulltoc 插入目录
	:insert footnotes 插入索引

	:footnote 1
		This is a footnote demo.

	:alert [ info | warning | error ]  白色|绿色|红色 底框
	:!! [ info | warning | error ]


	:pre [language]  代码展示 :pre c++
	::: [language]


----------
This sentence ends with a footnote reference.[^1]