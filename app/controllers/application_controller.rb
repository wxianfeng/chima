# encoding:utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery

  def render_json_ok
    render :json => { retCode: 1 }
  end

  def render_json_fail
    render :json => { retCode: 0 }
  end
end
