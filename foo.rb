#!/bin/env ruby  
# encoding: utf-8
require 'open-uri'
require 'nokogiri'
require 'rest-client'

main_url = "http://eee.hbut.edu.cn/"

test_url = "http://eee.hbut.edu.cn/html/ZXZX/XWZX/20110307/zoulingjiaoshouhuohubeisheng_jiaoyuxitongxianjinnvzhigong_chenhao_513.html"

html = open(test_url).read
# doc = Nokogiri::HTML(html)

doc = Nokogiri::HTML(html, nil, "GB18030")
# doc.encoding = "bg2312"

# title = doc.css('table')[8].css('.hy_2')[0].content

# newsrecord = doc.css('table')[8].css('td')[1].content

# content = doc.css('table')[8].css('td')[3].content

# puts doc.css('body')[0].content
puts html

# for i in 1..15
#   my_url = "http://eee.hbut.edu.cn/html/ZXZX/XWZX/list_16_"+ i.to_s + ".html"
#   html = open(my_url).read
#   doc = Nokogiri::HTML(html)

#   doc.css('table')[1].css('tr')[2].css('table')[3].css('tr')[3].css('table')[0].css('a').each do |link|

#     test_url = main_url + link['href']
#     html = open(test_url).read
#     doc = Nokogiri::HTML(html)

#     title = doc.css('table')[8].css('.hy_2')[0].content

#     newsrecord = doc.css('table')[8].css('td')[1].content

#     content = doc.css('table')[8].css('td')[3].content

#     images = ""

#     doc.css('table')[8].css('img').each do |img|
#       if img.

#         images += (main_url+img['src']+",")
#       end

#       puts title

#       response = RestClient.post "http://myhgd.aws.af.cm/passages.json",
#       {
#         passage: 
#         {
#           title: title,
#           newsrecord: newsrecord,
#           content: content,
#           images: images,
#           postUrl: test_url,
#           psgType: 1
#         }
#       }
#   end
# end

  def post
    response = RestClient.post "http://0.0.0.0:3000/passages.json",
    {
      passage: 
      {
        title: title,
        newsrecord: newsrecord,
        content: content,
        images: images,
        postUrl: test_url,
        psgType: 1
      }
    }
  end
