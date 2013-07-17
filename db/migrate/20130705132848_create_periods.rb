class CreatePeriods < ActiveRecord::Migration
  def change
    create_table :periods do |t|
      t.string :name
      t.integer :number
      t.time :stime
      t.time :etime

      t.timestamps
    end
  end
end
