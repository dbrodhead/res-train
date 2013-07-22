class CreatePgroups < ActiveRecord::Migration
  def change
    create_table :pgroups do |t|
      t.string :name

      t.timestamps
    end
  end
end
