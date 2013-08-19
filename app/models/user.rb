class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_presence_of :email
  validates_uniqueness_of :email
  
  attr_accessible :city_id, :email, :name, :role_id, :phone, :portfolio_link, :portfolio_description, :portfolio_file
  
  mount_uploader :portfolio_file, PortfolioUploader

  acts_as_messageable :required   => :body,                  #[:topic, :body]
                      :dependent  => :destroy,               # default :nullify
                      :group_messages => true             

  belongs_to :role
  belongs_to :city
  has_many :user_activities
  has_many :ads
  has_many :ad_applications

end
