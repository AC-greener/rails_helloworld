class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      #  change 方法使用Rails 提供的 create_table 方法在数据库中新建一个表，用于存储用户
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
