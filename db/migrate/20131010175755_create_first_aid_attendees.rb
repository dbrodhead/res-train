class CreateFirstAidAttendees < ActiveRecord::Migration
  def change
    create_table :first_aid_attendees do |t|
      t.integer :first_aid_course_id
      t.string :lname
      t.string :fname
      t.string :lastthree
      t.string :email
      t.integer :department_id
      t.integer :user_id
      t.integer :created_by

      t.timestamps
    end
  end
end
