class User < ActiveRecord::Base
  has_many :messages
  def self.authenticate(login, email)
    find(:first, :conditions => {:login => login, :email => email})
  end
end
