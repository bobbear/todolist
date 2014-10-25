class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :title
      t.text :body
      t.date :create_time
      t.boolean :has_finished

      t.timestamps
    end
  end
end
