# encoding:utf-8
require 'digest/md5'
class Taobao

  @@app_key = '12429317'
  @@app_secret = 'sandboxc34d5b5df01a464436315e251'

  PARAM = {
    :top_parameters => 'ZXhwaXJlc19pbj04NjQwMCZpZnJhbWU9MSZyZV9leHBpcmVzX2luPTE1NTUyMDAwJnJlZnJlc2hfdG9rZW49NjEwMmEwMDgxZDBiMjFjNTYyYzg3YmM4YzcyYWRkZjA2MjU0NDNkZjBlNmI5ZDYxNzU3NTQzNTEmdHM9MTMyMzg3NTY4MTQyMiZ2aXNpdG9yX2lkPTE3NTc1NDM1MSZ2aXNpdG9yX25pY2s9YWxpcHVibGljMDE=',
    :top_session => '6101b00616a8962a07791c93d95dbd2e1aaf1838881c657175754351'
  }


  # 字符串 转化为 字节数组
  # ruby-1.9.2-p290 :054 > "Ruby".split(//).collect { |ele| ele.unpack("H*") }.flatten
  # => ["52", "75", "62", "79"]

  ##
  # 生成签名
  # base64(md5(top_appkey+top_parameters+top_session+app_secret))
  # http://open.taobao.com/doc/detail.htm?id=110
  def self.sign(top_parameters,top_session)
    # md5 = Digest::MD5.hexdigest((@@app_key+top_parameters+top_session+@@app_secret))
    md5 = Digest::MD5.hexdigest(@@app_key+PARAM.sort_by { |k,v| k.to_s }.flatten.join+@@app_secret).upcase
    # par= "12429317ZXhwaXJlc19pbj04NjQwMCZpZnJhbWU9MSZyZV9leHBpcmVzX2luPTE1NTUyMDAwJnJlZnJlc2hfdG9rZW49NjEwMmEwMDgxZDBiMjFjNTYyYzg3YmM4YzcyYWRkZjA2MjU0NDNkZjBlNmI5ZDYxNzU3NTQzNTEmdHM9MTMyMzg3NTY4MTQyMiZ2aXNpdG9yX2lkPTE3NTc1NDM1MSZ2aXNpdG9yX25pY2s9YWxpcHVibGljMDE=6101b00616a8962a07791c93d95dbd2e1aaf1838881c657175754351"
    # md5 = Digest::MD5.hexdigest(par)
    p md5
    Base64.encode64(md5)
  end

  def self.decode64(top_parameters)
    Base64.decode64(top_parameters)
  end

end