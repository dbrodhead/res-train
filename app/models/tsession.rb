class Tsession < ActiveRecord::Base
  attr_accessible :activity, :instructor, :location, :period_id, :trade_id, :training_day_id, :multi
  attr_accessor :multi
  
  belongs_to :training_day
  belongs_to :trade
  belongs_to :period
  has_one :pgroup, :through => :period
end
