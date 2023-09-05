class ChangeCloumnsNotnullAddUsers < ActiveRecord::Migration[6.1]
  def change
    change_column :users, :gender, :interger, null: false
  end
end
