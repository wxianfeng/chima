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
    uf = UserForecast.where(:user_id=>current_user.id,:style=>current_user.style,:category_id=>UpSize::M_TYPES.invert["西服上衣"]).last
    if uf.nil?
      uf = UserForecast.create({ user_id: current_user.id,style: current_user.style,category_id: UpSize::M_TYPES.invert["西服上衣"] })
    end
    if uf.chest != r
      uf.chest = r
      uf.save
    end
    r
  end
  # 正装衬衫 胸围
  alias_method :show_dressshirt_chest , :show_suit_chest

end