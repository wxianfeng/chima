# encoding: utf-8
module ApplicationHelper

  ##
  # obj => :user
  #        @user
  def error_messages_for obj
    html = ''
    obj = instance_variable_get("@#{obj}") if obj.is_a?(Symbol)
    if obj.errors.any?
      html << %Q{<div id="error_explanation">}
      html << %Q(<ul>)
      obj.errors.full_messages.each { |msg|
        html << %Q(<li>#{msg}</li>)
      }
      html << %Q{</ul>}
      html << %Q{</div>}
    end
    raw html
  end

end
