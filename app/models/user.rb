class User < ActiveRecord::Base
  has_many :todos

  #动态返回用户下拉列表
  def self.all_users_select_options
    User.all.map { |user| [user.name, user.id]}
  end
end
