# encoding:utf-8
class WelcomeController < ApplicationController
  def step1
    # expires_in=86400&iframe=1&re_expires_in=15552000&refresh_token=61019107eb665d350e1a057c9816cbdeca3225ff46b8155175754351&ts=1323872724840&visitor_id=175754351&visitor_nick=alipublic01
    # user = User.find_or_create()
    # Rails.logger.debug "debug #{Taobao.decode64(params[:top_parameters])}"
    if params[:top_parameters]
      parameters = Taobao.decode64(params[:top_parameters])
      visitor = parameters.split(/&/).grep(/visitor/)
      user = User.find_or_create(visitor)
      cookies[:visitor_id] = user.visitor_id
      cookies[:visitor_nick] = user.visitor_nick
    end
  end

  def step2

  end

end
