# encoding:utf-8
module WelcomeHelper

  def show_brands_select
    html = ''
    Brand.find_each do |brand|
      html << "<li><a href=\"javascript:void(0)\" onclick=\"Chima.Welcome.changeBrand(#{brand.id});\">#{brand.name}</a></li>"
    end
    raw html
  end

end