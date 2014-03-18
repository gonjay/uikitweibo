# 欢迎使用
一个用来练手的rails项目，主要是因为喜欢http://getuikit.com 这个前端框架，想用一下。得益于uikit，这个应用，跑在浏览器上也有不错的体验。

# Gem

这个微博应用使用了以下gem:
      
  	'devise'(用户管理)
    'simple_form'(devise的依赖以及，简单一些form表单的生成)
    'mysql2'(生产环境的数据库)
    'activerecord-mysql-adapter'(把对象映射到mysql数据库的插件)
    'thin'(测试用web服务器)
    'unicorn'(生产环境用web服务器)
    'qiniu-rs'(七牛云存储来存储用户发送的微博图片)
    'carrierwave'(上传组件)
    "mini_magick"(处理用户上传的头像)

## 如何开始
	git clone https://github.com/gonjay/uikitweibo.git
	
	bundle install
	
	rake db:migrate
	
	rails s
	

## demo

http://evening-brook-6546.herokuapp.com/