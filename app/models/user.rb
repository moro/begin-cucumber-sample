class User < ActiveRecord::Base
  def self.authenticate(login, email)
    find(:first, :conditions => {:login => login, :email => email})
  end
end
