class Period < ActiveRecord::Base
  attr_accessible :etime, :name, :number, :stime, :pgroup_id
  default_scope order('name ASC')
  
  has_many :tsessions, :dependent => :destroy
  belongs_to :pgroup
end
