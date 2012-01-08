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
  # 正装衬衫 胸围
  alias_method :show_dressshirt_chest , :show_suit_chest

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
  # 正装衬衫 腰围
  alias_method :show_dressshirt_middle_chest , :show_suit_middle_chest

  def show_real_dressshirt_chest(user)
    chest = show_dressshirt_chest(user) - 10
    middle_chest = show_dressshirt_middle_chest(user)
    r = if chest > middle_chest
      chest
    else
      middle_chest
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
  # 正装下摆
  alias_method :show_dressshirt_xiabai , :show_suit_xiabai

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

  # 西裤腰围
  def show_xiku_down_chest(user)
    user.down_chest
  end

  # 西裤臀围
  def show_xiku_ass(user)
    r = case user.style
    when User::Style::LOOSE
      user.ass + 11
    when User::Style::NORMAL
      user.ass + 8
    when User::Style::FIT
      user.ass + 6
    when User::Style::TIGHT
      user.ass + 4
    end
    r
  end

  # 西裤总档
  def show_xiku_zongdan(user)
    height = user.height.value
    r = case height
    when 160..161 then 61
    when 162..163 then 62
    when 164..165 then 63
    when 166..167 then 64
    when 168..169 then 65
    when 170..171 then 66
    when 172..173 then 67
    when 174..175 then 68
    when 176..177 then 69
    when 178..179 then 70
    when 181..182 then 71
    when 182..183 then 72
    when 184..185 then 73
    when 186..187 then 74
    when 188..190 then 75
    else
      61
    end
    if user.down_chest > 90 and user.down_chest <= 100
      r = r + 3
    elsif user.down_chest > 100 and user.down_chest <= 110
      r = r + 6
    elsif user.down_chest > 110 and user.down_chest <= 120
      r = r + 9
    elsif user.down_chest > 120 and user.down_chest <= 130
      r = r + 12
    elsif user.down_chest > 130 and user.down_chest <= 140
      r = r + 15
    elsif user.down_chest > 140
      r = r + 18
    end
    r
  end

  # 西裤横档
  def show_xiku_crosspiece(user)
    r = case user.style
    when User::Style::LOOSE
      user.crosspiece + 10
    when User::Style::NORMAL
      user.crosspiece + 8
    when User::Style::FIT
      user.crosspiece + 6
    when User::Style::TIGHT
      user.crosspiece + 4
    end
    r
  end

  # 西裤裤长
  def show_xiku_foot(user)
    user.foot
  end

  # 西裤裤口
  def show_xiku_kukou(user)
    case show_xiku_crosspiece(user)
    when 0..60 then 20
    when 61..64 then 21
    when 64..68 then 22
    when 68..72 then 23
    when 72..76 then 24
    when 76..10000 then 25
    end
  end

  # 正装衬衫 衣长
  def show_dressshirt_length(user)
    height = user.height.value
    r = case height
    when 160..161 then 70
    when 162..163 then 71
    when 164..165 then 72
    when 166..167 then 73
    when 168..169 then 74
    when 170..171 then 75
    when 172..173 then 76
    when 174..175 then 77
    when 176..177 then 78
    when 178..179 then 79
    when 181..182 then 80
    when 182..183 then 81
    when 184..187 then 82
    when 188..189 then 83
    when 190 then 84
    else
      70
    end
    r
  end

  # 正装衬衫 短袖长
  def show_dressshirt_short_length(user)
    height = user.height.value
    r = case height
    when 160..167 then 23
    when 168..171 then 24
    when 172..179 then 25
    when 180..187 then 26
    when 188..190 then 27
    end
    r
  end

  # 休闲衬衫 胸围
  def show_casualshirt_chest(user)
    if user.style == User::Style::LOOSE
      user.style = User::Style::NORMAL
    elsif user.style == User::Style::NORMAL
      user.style = User::Style::FIT
    elsif user.style == User::Style::FIT
      user.style = User::Style::TIGHT
    end
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

  # 休闲衬衫 腰围
  def show_casualshirt_middle_chest(user)
    if user.style == User::Style::LOOSE
      user.style = User::Style::NORMAL
    elsif user.style == User::Style::NORMAL
      user.style = User::Style::FIT
    elsif user.style == User::Style::FIT
      user.style = User::Style::TIGHT
    end
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

  # t-shirt 胸围
  def show_tshirt_chest(user)
    r = if user.style == User::Style::LOOSE
      user.chest + 13
    elsif user.style == User::Style::NORMAL
      user.chest + 10
    elsif user.style == User::Style::FIT
      user.chest + 8
    elsif user.style == User::Style::TIGHT
      user.chest + 6
    end
    r
  end

  # t-shirt 腰围
  def show_tshirt_middle_chest(user)
    r = if user.style == User::Style::LOOSE
      user.middle_chest - 5
    elsif user.style == User::Style::NORMAL
      user.middle_chest - 8
    elsif user.style == User::Style::FIT
      user.middle_chest - 10
    elsif user.style == User::Style::TIGHT
      user.middle_chest
    end
    r
  end

  # t-shirt 衣长
  def show_tshirt_length(user)
    height = user.height.value
    r = case height
    when 160..161 then 65
    when 162..163 then 66
    when 164..165 then 66
    when 166..167 then 66
    when 168..169 then 67
    when 170..171 then 68
    when 172..173 then 69
    when 174..175 then 70
    when 176..177 then 71
    when 178..179 then 72
    when 181..182 then 73
    when 182..183 then 74
    when 184..187 then 75
    when 188..189 then 76
    when 190 then 77
    else
      65
    end
    r
  end

  # polo 衫 胸围
  def show_polo_chest(user)
    r = if user.style == User::Style::LOOSE
      user.chest + 15
    elsif user.style == User::Style::NORMAL
      user.chest + 12
    elsif user.style == User::Style::FIT
      user.chest + 9
    elsif user.style == User::Style::TIGHT
      user.chest + 6
    end
    r
  end

  # polo 衣长
  def show_polo_length(user)
    height = user.height.value
    r = case height
    when 160..161 then 65
    when 162..163 then 66
    when 164..165 then 66
    when 166..167 then 67
    when 168..169 then 69
    when 170..171 then 70
    when 172..173 then 71
    when 174..175 then 72
    when 176..177 then 73
    when 178..179 then 74
    when 181..182 then 75
    when 182..183 then 76
    when 184..187 then 77
    when 188..189 then 78
    when 190 then 79
    else
      65
    end
    r
  end

end
