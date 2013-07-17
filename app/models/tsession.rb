class Tsession < ActiveRecord::Base
  attr_accessible :activity, :instructor, :location, :period_id, :trade_id, :training_day_id
  
  belongs_to :training_day
  belongs_to :trade
  belongs_to :period
end
