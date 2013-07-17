class CreateTsessions < ActiveRecord::Migration
  def change
    create_table :tsessions do |t|
      t.integer :training_day_id
      t.integer :trade_id
      t.integer :period_id
      t.string :instructor
      t.text :activity
      t.string :location

      t.timestamps
    end
  end
end
