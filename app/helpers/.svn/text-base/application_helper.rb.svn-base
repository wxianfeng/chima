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
  def show_suit_chest(user)
    r = case user.chest_middle_chest_diff
    when 13..16
      if user.style == User::Style::LOOSE
        user.chest + 18
      elsif user.style == User::Style::NORMAL
        user.chest + 15
      elsif user.style == User::Style::FIT
        user.chest + 12
      elsif user.style == User::Style::TIGHT
        user.chest + 9
      end
    when 5..12
      if user.style == User::Style::LOOSE
        user.chest + 17
      elsif user.style == User::Style::NORMAL
        user.chest + 14
      elsif user.style == User::Style::FIT
        user.chest + 11
      elsif user.style == User::Style::TIGHT
        user.chest + 9
      end
    when -3..4
      if user.style == User::Style::LOOSE
        user.chest + 16
      elsif user.style == User::Style::NORMAL
        user.chest + 13
      elsif user.style == User::Style::FIT
        user.chest + 10
      elsif user.style == User::Style::TIGHT
        user.chest + 8
      end
    else
      user.chest
    end
    r
  end

  # 西服腰围
  def show_suit_middle_chest(user)
    r = case user.chest_middle_chest_diff
    when 13..16
      if user.style == User::Style::LOOSE
        user.middle_chest + 18
      elsif user.style == User::Style::NORMAL
        user.middle_chest + 15
      elsif user.style == User::Style::FIT
        user.middle_chest + 12
      elsif user.style == User::Style::TIGHT
        user.middle_chest + 9
      end
    when 11..12
      if user.style == User::Style::LOOSE
        user.middle_chest + 15
      elsif user.style == User::Style::NORMAL
        user.middle_chest + 12
      elsif user.style == User::Style::FIT
        user.middle_chest + 9
      elsif user.style == User::Style::TIGHT
        user.middle_chest + 9
      end
    when 9..10
      if user.style == User::Style::LOOSE
        user.middle_chest + 14
      elsif user.style == User::Style::NORMAL
        user.middle_chest + 11
      elsif user.style == User::Style::FIT
        user.middle_chest + 9
      elsif user.style == User::Style::TIGHT
        user.middle_chest + 7
      end
    when 5..8
      if user.style == User::Style::LOOSE
        user.middle_chest + 13
      elsif user.style == User::Style::NORMAL
        user.middle_chest + 10
      elsif user.style == User::Style::FIT
        user.middle_chest + 8
      elsif user.style == User::Style::TIGHT
        user.middle_chest + 7
      end
    when -3..4
      if user.style == User::Style::LOOSE
        user.middle_chest + 12
      elsif user.style == User::Style::NORMAL
        user.middle_chest + 9
      elsif user.style == User::Style::FIT
        user.middle_chest + 8
      elsif user.style == User::Style::TIGHT
        user.middle_chest + 7
      end
    else
      user.middle_chest
    end
    r
  end

  # 西服下摆
  def show_suit_xiabai(user)
    r = case user.chest_middle_chest_diff
    when 15..16
      show_suit_chest(user) - 3
    when 11..14
      show_suit_chest(user) - 2
    when 9..10
      show_suit_chest(user) - 1
    when 5..8
      show_suit_chest(user) + 1
    when 1..4
      show_suit_chest(user) + 2
    when -3..0
      show_suit_chest(user) + 3
    end
    r
  end

  # 西服前长
  def show_suit_front_length(user)
    height = user.height.value
    r = case height
    when 160..161 then 71
    when 162..163 then 72
    when 164..165 then 73
    when 166..167 then 74
    when 168..169 then 75
    when 170..171 then 76
    when 172..173 then 77
    when 174..175 then 78
    when 176..177 then 79
    when 178..179 then 80
    when 181..182 then 81
    when 182..183 then 82
    when 184..187 then 83
    when 188..189 then 84
    when 190 then 85
    else
      71
    end
    r
  end

  # 西服后长
  def show_suit_back_length(user)
    height = user.height.value
    r = case height
    when 160..161 then 68
    when 162..163 then 69
    when 164..165 then 70
    when 166..167 then 71
    when 168..169 then 72
    when 170..171 then 73
    when 172..173 then 74
    when 174..175 then 75
    when 176..177 then 76
    when 178..179 then 77
    when 181..182 then 78
    when 182..183 then 79
    when 184..187 then 80
    when 188..189 then 81
    when 190 then 82
    else
      68
    end
    r
  end

end
