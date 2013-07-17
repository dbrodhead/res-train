class CreateTrainingDays < ActiveRecord::Migration
  def change
    create_table :training_days do |t|
      t.date :day
      t.string :weekday
      t.text :details

      t.timestamps
    end
  end
end
