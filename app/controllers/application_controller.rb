# encoding:utf-8
class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user

  def render_json_ok
    render :json => { retCode: 1 }
  end

  def render_json_fail
    render :json => { retCode: 0 }
  end

  def current_user
    User.find_by_visitor_id(cookies[:visitor_id])
  end

end
