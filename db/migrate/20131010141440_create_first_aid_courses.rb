class CreateFirstAidCourses < ActiveRecord::Migration
  def change
    create_table :first_aid_courses do |t|
      t.date :sdate
      t.date :edate
      t.string :instructor
      t.string :iutonumber
      t.string :iutolink
      t.integer :spots
      t.string :language

      t.timestamps
    end
  end
end
