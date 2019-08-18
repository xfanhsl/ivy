---
title: GO微信小程序登录和支付
date: '2019-08-13'
tags:
  - golang
  - weixin pay sdk
---

本文仅适用于微信小程序登录、支付golang服务器实现，而通用golang支付实现(支付宝、微信)请看另一篇。

# 一、微信开发文档 #
- [微信支付](https://pay.weixin.qq.com/wiki/doc/api/index.html)
- [微信小程序服务器SDK](https://pay.weixin.qq.com/wiki/doc/api/wxa/wxa_api.php?chapter=7_3&index=1)
- [微信小程序客户端API](https://developers.weixin.qq.com/miniprogram/dev/api/open-api/payment/wx.requestPayment.html)

# 一、微信管理后台业务 #

- 微信公众号管理后台，申请小程序，申请后需要注意两点:
:blockquote
  #. APPID、APPSECRET用于登录获取openid、sessionkey，其中openid用于支付API
  #. 开发配置小程序服务器域名和端口(eg: https://supercline.com:8090)，如下图![](../../assets/images/tool_sdk/wxconf.png)
:>>

- 微信公众号商户后台:商户号(MCHID)和API支付密钥(APIKEY)

# 二、HTTPS证书 #
- [HTTPS服务器配置文档](https://pay.weixin.qq.com/wiki/doc/api/wxa/wxa_api.php?chapter=10_4)
- 自己手动生成非认证调试证书
:blockquote
	- Generate private key (.key)
	:pre
		# Key considerations for algorithm "RSA" ≥ 2048-bit
		openssl genrsa -out server.key 2048

		# Key considerations for algorithm "ECDSA" ≥ secp384r1
		# List ECDSA the supported curves (openssl ecparam -list_curves)
		openssl ecparam -genkey -name secp384r1 -out server.key

	- Generation of self-signed(x509) public key (PEM-encodings .pem|.crt) based on the private (.key)
	:pre
		openssl req -new -x509 -sha256 -key server.key -out server.crt -days 3650
:>>
- 申请阿里或腾讯免费认证证书


# [三、源码](https://github.com/SuperCLine/wxpay) #
:!! [ warning ]
	:p ||
		`wxpay_payconfig.go` 支付配置模块
		`wxpay_util.go` 支付通用模块
		`wxpay_paydata.go` 支付通信数据模块
		`wxpay_payapi.go` 支付API模块
		`wxpay_payclient.go` 与微信后台通信模块
		**以上模块构成go支付SDK**

:!! [ error ]
	:p ||
		`wxpay_default_listener.go` 支付回调监听
		`wxpay_default_service.go` 基于支付SDK实现的默认支付服务
		**开发者可以根据以上模块实现自己的支付服务**
