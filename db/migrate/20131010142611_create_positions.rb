class CreatePositions < ActiveRecord::Migration
  def change
    create_table :positions do |t|
      t.integer :department_id
      t.string :name
      t.integer :user_id
      t.text :description

      t.timestamps
    end
  end
end
