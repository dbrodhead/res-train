class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :fname, :lname, :rank, :trade_id, :department_id, :position_id
  attr_accessible :email, :password, :password_confirmation, :remember_me, :fname, :lname, :rank, :trade_id, :department_id, :position_id, :role_ids, :as => :admin

  # Require fields
  validates :email,   
            :presence => true,   
            :uniqueness => true,   
            :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i } 
  # validates :fname, presence: true
  # validates :lname, presence: true
  # validates :rank, presence: true
  # validates :trade_id, presence: true
  # validates :department_id, presence: true
  
  has_many :assignments
  has_many :roles, :through => :assignments
  has_many :first_aid_attendees
  belongs_to :department
  belongs_to :trade
  belongs_to :position
  
  def has_role?(role_sym)
    roles.any? { |r| r.name.underscore.to_sym == role_sym }
  end
  
  def full_name_and_rank
    "#{rank} #{fname} #{lname}"
  end
end
