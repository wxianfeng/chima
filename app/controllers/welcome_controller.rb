# encoding:utf-8
class WelcomeController < ApplicationController
  before_filter :find_user , :except=>[:step1]

  def step1
    # expires_in=86400&iframe=1&re_expires_in=15552000&refresh_token=61019107eb665d350e1a057c9816cbdeca3225ff46b8155175754351&ts=1323872724840&visitor_id=175754351&visitor_nick=alipublic01
    if params[:top_parameters]
      parameters = Taobao.decode64(params[:top_parameters])
      visitor = parameters.split(/&/).grep(/visitor/)
      user = User.find_or_create(visitor)
      cookies[:visitor_id] = user.visitor_id
      cookies[:visitor_nick] = user.visitor_nick
    end
  end

  def step2
    gender = params[:gender]
    @user.update_attribute :gender , gender
  end

  def step3
    @user.update_attribute :height_id , params[:height]
    @user.update_attribute :weight_id , params[:weight]
  end

  def step4
    @user.update_attribute :style , params[:style]
    if @user.gender == 0
      height_forecasts = ForecastMsize.where(:height_id=>@user.height_id)
      weight_forecasts = ForecastMsize.where(:weight_id=>@user.weight_id)
    else
      height_forecasts = ForecastWsize.where(:height_id=>@user.height_id)
      weight_forecasts = ForecastWsize.where(:weight_id=>@user.weight_id)
    end
    forecasts = (height_forecasts + weight_forecasts ).uniq
    arr = []
    ##
    # 预估尺寸算法
    # 身高差值 + 体重差值 最小的
    forecasts.each_with_index do |forecast,index|
      arr << (forecast.height.value - @user.height.value).abs + (forecast.weight.value - @user.weight.value).abs
    end
    min = arr.min
    index = arr.find_index(min)
    @forecast = forecasts[index.to_i]
    @user.forecast_id = @forecast.id
    @user.save
  end

  def step5
    @forecast = if @user.gender == 0
      ForecastMsize.find(@user.forecast_id)
    else
      ForecastWsize.find(@user.forecast_id)
    end
    @actual_size = @user.actual_size
  end

  def step6

  end

  def step7

  end

  def actual_size
    key = params[:column]
    if @user.actual_size
      actual_size = @user.actual_size
    else
      actual_size = ActualSize.new({ user_id: @user.id })
    end
    actual_size.send("#{key}=",params[:value])
    if actual_size.save
      render_json_ok
    else
      render_json_fail
    end
  end

  def load_xifu
    if params[:style]
      @user.style = params[:style]
      @user.save
    end
    render :partial=>"xifu"
  end

  def load_xiku
    if params[:style]
      @user.style = params[:style]
      @user.save
    end
    render :partial => "xiku"
  end

  def load_dressshirt
    if params[:style]
      @user.style = params[:style]
      @user.save
    end
    render :partial => "dressshirt"
  end

  def load_casualshirt
    if params[:style]
      @user.style = params[:style]
      @user.save
    end
    render :partial => "casualshirt"
  end

  protected
  def find_user
    @user = User.find_by_visitor_id(cookies[:visitor_id])
  end

end
