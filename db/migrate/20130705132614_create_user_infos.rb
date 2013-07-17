class CreateUserInfos < ActiveRecord::Migration
  def change
    create_table :user_infos do |t|
      t.string :fname
      t.string :lname
      t.string :rank
      t.integer :user_id
      t.integer :trade_id
      t.integer :dept_id

      t.timestamps
    end
  end
end
