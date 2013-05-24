class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role, :avatar, :first_name, :last_name, :email, :password, :password_confirmation, :remember_me, :status
  # attr_accessible :title, :body
  has_attached_file :avatar, styles:
  { medium: "300x300>", thumb: "100x100>" }, 
  default_url: "profileplaceholder.png"

  has_many :reviews
  has_many :rents

end
