class Period < ActiveRecord::Base
  attr_accessible :etime, :name, :number, :stime, :pgroup_id
  default_scope order('pgroup_id ASC')
  
  has_many :tsessions, :dependent => :destroy
  belongs_to :pgroup
  has_many :training_days, :through => :tsessions
end
