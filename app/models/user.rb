class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role, :avatar, :first_name, :last_name, :email, :password, :password_confirmation, :remember_me, :status, :provider, :uid
  # attr_accessible :title, :body
  has_attached_file :avatar, styles:
  { medium: "300x300>", thumb: "100x100>" }, 
  default_url: "profileplaceholder.png"

  has_many :reviews, dependent: :destroy
  has_many :rents, dependent: :destroy
  has_many :photos, dependent: :destroy

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      fullname = auth.info.name.split(' ')
      user.first_name = fullname[0]
      user.last_name = fullname[1]
    end
  end

  def self.new_with_session(params, session)
    if session["devise.user_attributes"]
      new(session["devise.user_attributes"], without_protection: true) do |user|
        user.attributes = params
        user.valid?
      end
    else
      super
    end
  end

  def password_required?
    super && provider.blank?
  end

  def update_with_password(params, *options)
    if encrypted_password.blank?
      update_attributes(params, *options)
    else
      super
    end
  end

end
