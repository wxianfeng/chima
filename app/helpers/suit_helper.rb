# encoding:utf-8
module SuitHelper

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
    UserForecast.update_data(current_user,UpSize::M_TYPES.invert["西服上衣"],'chest',r)
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
    UserForecast.update_data(current_user,UpSize::M_TYPES.invert["西服上衣"],'middle_chest',r)
    r
  end
  # 正装衬衫 腰围
  alias_method :show_dressshirt_middle_chest , :show_suit_middle_chest

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
    UserForecast.update_data(current_user,UpSize::M_TYPES.invert["西服上衣"],'lap',r)
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
    UserForecast.update_data(current_user,UpSize::M_TYPES.invert["西服上衣"],'front_length',r)
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
    UserForecast.update_data(current_user,UpSize::M_TYPES.invert["西服上衣"],'back_length',r)
    r
  end

  #  ruby-1.9.2-p290 :033 > {"a"=>2,"b"=>3,"4"=>1}.max
  # => ["b", 3]
  def calc_brand
    forecast = UserForecast.where(:category_id=>UpSize::M_TYPES.invert["西服上衣"],:user_id=>current_user.id,:style=>current_user.style).last
    return [] if forecast.nil?
    suits = UpSize.where(:category_id=>UpSize::M_TYPES.invert["西服上衣"])
    hsh = {}
    suits.each do |suit|
      chest_score = calc_chest(forecast,suit)
      middle_chest_score = calc_middle_chest(forecast,suit)
      lap_score = calc_lap(forecast,suit)
      front_score = calc_front_length(forecast,suit)
      back_score = calc_back_length(forecast,suit)
      score = chest_score + middle_chest_score + lap_score + front_score + back_score
      hsh.merge!({ suit => score })
      Rails.logger.debug "debug #{score}"
    end
    Rails.logger.debug "debug #{hsh.max}"
    hsh.max_by {|a| a[1] }
  end

  def calc_chest(forecast,suit)
    score = (forecast.chest - suit.chest).abs.to_i
    r = case score
    when 8..1000 then 0
    when 7 then 30/8
    when 6 then 60/8
    when 5 then 90/8
    when 4 then 120/8
    when 3 then 150/8
    when 2 then 180/8
    when 1 then 210/8
    when 0 then 240/8
    end
    r
  end

  def calc_middle_chest(forecast,suit)
    score = (forecast.middle_chest - suit.waistline).abs.to_i
    r = case score
    when 10..1000 then 0
    when 9 then 20/10
    when 8 then 40/10
    when 7 then 60/10
    when 6 then 80/10
    when 5 then 100/10
    when 4 then 120/10
    when 3 then 140/10
    when 2 then 160/10
    when 1 then 180/10
    when 0 then 200/10
    end
    r
  end

  def calc_lap(forecast,suit)
    return 0 if forecast.lap.nil? or suit.lap.nil?
    score = (forecast.lap - suit.lap).abs.to_i
    r = case score
    when 10..1000 then 0
    when 9 then 5/10
    when 8 then 10/10
    when 7 then 15/10
    when 6 then 20/10
    when 5 then 25/10
    when 4 then 30/10
    when 3 then 35/10
    when 2 then 40/10
    when 1 then 45/10
    when 0 then 50/10
    end
    r
  end

  def calc_front_length(forecast,suit)
    return 0 if forecast.front_length.nil? or suit.front_length.nil?
    score = (forecast.front_length - suit.front_length).abs.to_i
    r = case score
    when 5..1000 then 0
    when 4 then 15/5
    when 3 then 30/5
    when 2 then 45/5
    when 1 then 60/5
    when 0 then 75/5
    end
    r
  end

  def calc_back_length(forecast,suit)
    return 0 if forecast.back_length.nil? or suit.back_length.nil?
    score = (forecast.back_length - suit.back_length).abs.to_i
    r = case score
    when 5..1000 then 0
    when 4 then 15/5
    when 3 then 30/5
    when 2 then 45/5
    when 1 then 60/5
    when 0 then 75/5
    end
    r
  end

end