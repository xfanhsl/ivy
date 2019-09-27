---
title: 游戏开发日志库
date: '2019-09-27'
tags:
  - c++
  - thread
  - log
---


# 一、源码 #
:!! [ error ]
	[GitHub源码](https://github.com/SuperCLine/log.git)
:!! [ info ]
	![image link](../../assets/images/log/log_console.png)
:!! [ warning ]
	![image link](../../assets/images/log/log_file.png)

# 二、模板配置 #
::: json
	{
		"asyn" : true, // support multi-thread
		"filter" : {
			"debug" : false,
			"err" : false,
			"info" : false,
			"perf" : false
		},
		"logger" : [
			{
				"name" : "",
				"type" : 0
			},
			{
				"name" : "debug.log",
				"type" : 1
			},
			{
				"name" : "info.log",
				"type" : 2
			},
			{
				"name" : "err.log",
				"type" : 3
			},
			{
				"name" : "perf.log",
				"type" : 4
			}
		],
		"tag" : [ "core", "pathfinder", "lua" ]
	}

# 三、示例 #
::: c++
	interface_logmgr* logger = load_module_log();
	logger->init("log_template.config");

	logger->logf(ELT_DEBUG, "core", "%s", "debug color");
	logger->logf(ELT_INFO, "core", "%s", "info color");
	logger->logf(ELT_ERROR, "core", "%s", "error color");
	logger->logf(ELT_PERF, "core", "%s", "per color");

	unload_module_log(logger);
