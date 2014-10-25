class AddUserIdToTodos < ActiveRecord::Migration
  def change
    add_column :todos, :user_id, :integer

    #添加默认的user_id
    user_id = User.find_by(:email => 'wenyang.zhang@zznode.com').id
    Todo.all.each do |todo|
      todo.user_id = user_id
      todo.save
    end
  end
end
