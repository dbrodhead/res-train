class AddProfileToUser < ActiveRecord::Migration
  def change
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :rank, :string
    add_column :users, :trade_id, :integer
    add_column :users, :department_id, :integer
  end
end
