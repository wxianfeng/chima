# encoding:utf-8
require "spec_helper"
describe Taobao do
  before(:each) do
    @top_parameters = 'ZXhwaXJlc19pbj04NjQwMCZpZnJhbWU9MSZyZV9leHBpcmVzX2luPTE1NTUyMDAwJnJlZnJlc2hfdG9rZW49NjEwMmEwMDgxZDBiMjFjNTYyYzg3YmM4YzcyYWRkZjA2MjU0NDNkZjBlNmI5ZDYxNzU3NTQzNTEmdHM9MTMyMzg3NTY4MTQyMiZ2aXNpdG9yX2lkPTE3NTc1NDM1MSZ2aXNpdG9yX25pY2s9YWxpcHVibGljMDE='
    @top_session = '6101b00616a8962a07791c93d95dbd2e1aaf1838881c657175754351'
    @top_sign = '4Xs6XH72f5bLdeYzqVeOEw=='
  end

  it "测试签名方法" do
    # p Taobao.sign(@top_parameters,@top_session)
    p Base64.decode64(@top_parameters)
  end
end