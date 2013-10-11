class Crr < ActiveRecord::Base
  attr_accessible :code, :expiry, :link, :name
  
  default_scope order('code ASC')
end
