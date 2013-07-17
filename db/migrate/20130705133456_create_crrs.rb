class CreateCrrs < ActiveRecord::Migration
  def change
    create_table :crrs do |t|
      t.string :code
      t.string :name
      t.text :link
      t.integer :expiry

      t.timestamps
    end
  end
end
