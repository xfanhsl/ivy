---
title: 基于Unity实现的动作技能可视化编辑器
date: '2019-08-18'
tags:
  - c#
  - unity
  - skill
  - action
  - animation
  - ai
---

本文主要讲述基于Unity Engine实现的动作技能可视化编辑器，同时为展示编辑器的强大附带一个通用游戏开发框架。

:!! [ error ]
	- [Unity Asset Store](http://supercline.com/)
	- [GitHub](https://github.com/SuperCLine/actioneditor)
	- [视频](http://supercline.com/)

![image link](../../assets/images/actioneditor.png)

# 编辑器实现原理 #
[[ Action ]]
    包含了动作(Animation)、特效(Effect)、音效(Audio)、相机(Camera)、攻击定义(AttackDef)、Action打断(ActionInterrupt)等
[[ AttackDef ]]
	包含发射器、攻击定义体(Entity)、攻击定义体属性(EntityComponent)、运动器(Animator)、受击系统(AttackHit)、BUFF伤害数值系统等
[[ ActionInterrupt ]]
	本质是当前Action允许被其它Action在不同条件下的触发
[[ AI ]]
	本质是基于是一组Action在不同条件下的触发