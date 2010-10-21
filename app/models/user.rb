class User < ActiveRecord::Base
  has_many :messages
  has_many :watchings, :foreign_key => 'watcher_id' do
    def for(other)
      detect{|w| w.watchee_id == other.id }
    end
  end
  has_many :watchees, :through => :watchings

  def self.authenticate(login, email)
    find(:first, :conditions => {:login => login, :email => email})
  end

  def watches?(other)
    !!watchings.for(other)
  end
end
