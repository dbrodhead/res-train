# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Role.new({ :name => 'Admin'}).save
#roles = ["Admin", "DeptAdmin", "Member"]
#roles.each{|d| Role.where(:name => d).find_or_create}
#Role.find_or_create([{ :name => 'Admin' }, { :name => 'DeptAdmin' }, { :name => 'Member' }], :without_protection => true)
User.find_or_create({ :email => 'admin@example.com', :password => 'password', :password_confirmation => 'password'})
Assignment.find_or_create({ :user_id => '1', :role_id => '1'})