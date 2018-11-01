---
title: IDE自定义
date: '2018-08-26'
dirmark: '__dir__'
tags:
  - wiki
  - vscode
  - visual studio
  - sublime
  - goland
---

# Sublime #

* Preferences\Color Scheme - Default
::: 
	Monokai
* Preferences\Key Bindings - User
:::
	[
		{ "keys": ["alt+m"], "command": "show_overlay", "args": {"overlay": "goto", "text": "@"} },
		{ "keys": ["shift+alt+o"], "command": "show_overlay", "args": {"overlay": "goto", "show_files": true} },
		{ "keys": ["alt+g"], "command": "goto_definition" },
		{ "keys": ["shift+alt+p"], "command": "show_overlay", "args": {"overlay": "goto", "text": "#"} },
	]
* Preferences\lobal Settings - User
:::
	"color_scheme": "Packages/Color Scheme - Default/Monokai.tmTheme",
	"font_size": 15.0,
	"folder_exclude_patterns": ["StreamingAssets","css"],
	"file_exclude_patterns":["*.meta"],
	"word_wrap": "auto"
* Lua Compile Support
:::
	Sublime Text 3\Data\Packages\User\Lua.sublime-build
	
	{
		"cmd": ["lua", "$file"],
	    "file_regex": "^(...*?):([0-9]*):?([0-9]*)",
	    "selector": "source.lua"
	}
* Go Compile Support
:::
	{
	    "cmd": ["go", "run", "$file_name"],
	    "file_regex": "^[ ]*File \"(…*?)\", line ([0-9]*)",
	    "working_dir": "$file_path",
	    "selector": "source.go"
	}
* Plugin
:::
	ConvertToUTF8
	Alignment
	BracketHighlighter
	SideBarEnhancements
	SublimeCodeIntel
	Emmet
	LuaAutocomplete
	GoSublime


# VSCode #

* File\Preferences\Settings - Open settings.json
:::
	{
	    "editor.fontSize": 18,
	    "files.exclude": {
	        "*.meta": true,
	        "**/.DS_Store": true,
	        "**/.git": true,
	        "**/.hg": true,
	        "**/.svn": true,
	        "**/CVS": true
	    },
		"search.exclude": {
	        "**/node_modules": true,
	        "**/bower_components": true,
	        "build/": true,
	        "temp/": true,
	        "library/": true,
	        "**/*.anim": true
	    },
	}

* File\Preferences\Keyboard Shortcuts - Show User Keybindings - edit keybingdings.json
:::
	[
	    {
	        "key": "shift+alt+o",
	        "command": "workbench.action.quickOpen"
	    },
	    {
	        "key": "ctrl+p",
	        "command": "-workbench.action.quickOpen"
	    },
	    {
	        "key": "alt+m",
	        "command": "workbench.action.gotoSymbol"
	    },
	    {
	        "key": "ctrl+shift+o",
	        "command": "-workbench.action.gotoSymbol"
	    }
	]

*  列编辑
:::
	Shift+Alt+Mouse
*  行拷贝
:::
	Shift+Alt+上或下键

# Goland #

* File\Settings\Editor\Font	Font:Consolas	
:::
	Size:16
* File\Settings\Editor\Color Scheme 	
:::
	Scheme:Monokai
* 显示文件结构
:::
	Ctrl+F12 ---> Alt+M
* 快速查找文件
:::
	Ctrl+Shift+N ---> Alt+Shift+O
* 快速查找类结构
:::
	Ctrl+N
* 查看接口实现
:::
	Ctrl+H
* 查找类函数符号
:::
	Ctrl+Shift+Alt+N
* 文件查找
:::
	Ctrl+Shift+F
* 查看当前函数声明
:::
	Alt+Q
* 查看声明
:::
	Ctrl+B

# Visual Studio #
* Tools\Options\Fonts and Colors
:::
	Font: Consolas
	Size: 14
	Item foreground: Default
	Item backgroud:  Silver
* Toos\Options\Keyboard
:::
	Edit.CommentSelection   ---> f2
	Edit.UncommentSelection ---> f3
* C++ File Header
:::
	/*------------------------------------------------------------------------------
	|
	| COPYRIGHT (C) 2018 - 2026 All Right Reserved
	|
	| FILE NAME  : $FILE$
	| AUTHOR     : CLine
	| PURPOSE    : 
	|
	| SPEC       : 
	|
	| MODIFICATION HISTORY
	| 
	| Ver	   Date			   By			   Details
	| -----    -----------    -------------   ----------------------
	| 1.0	   $YEAR$-$MONTH$-$DAY$      CLine           Created
	|
	+-----------------------------------------------------------------------------*/
	
	
	#ifndef _$FILE_BASE_UPPER$_H_
	#define _$FILE_BASE_UPPER$_H_
	
	
	__BEGIN_NAMESPACE
	
	
	
	
	
	__END_NAMESPACE
	
	
	#endif //_$FILE_BASE_UPPER$_H_

* C# File Header
:::
	/*------------------------------------------------------------------------------
	|
	| COPYRIGHT (C) 2018 - 2026 All Right Reserved
	|
	| FILE NAME  : $FILE$
	| AUTHOR     : CLine
	| PURPOSE    : 
	|
	| SPEC       : 
	|
	| MODIFICATION HISTORY
	| 
	| Ver	   Date			   By			   Details
	| -----    -----------    -------------   ----------------------
	| 1.0	   $YEAR$-$MONTH$-$DAY$      CLine           Created
	|
	+-----------------------------------------------------------------------------*/
	
	namespace CAE.Core
	{
	
	}
