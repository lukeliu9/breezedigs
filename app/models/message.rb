class Message < ActiveRecord::Base

  attr_accessible :name, :email, :subject, :body

  validates :name, :email, :subject, :body, :presence => true
  validates :email, :format => { :with => %r{.+@.+\..+} }
  
  def persisted?
    false
  end

end
