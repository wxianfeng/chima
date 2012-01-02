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

  # 西服胸围
  def show_xifu_chest(user)
    r = case user.chest_down_chest_diff
    when 13..16
      if user.style == User::Style::LOOSE
        user.chest + 18
      end
    when 5..12
      if user.style == User::Style::LOOSE
        user.chest + 17
      end
    when -3..4
      if user.style == User::Style::LOOSE
        user.chest + 16
      end
    end
    r
  end

end
