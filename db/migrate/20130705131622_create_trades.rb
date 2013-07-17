class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t|
      t.string :name
      t.integer :mosid

      t.timestamps
    end
  end
end
