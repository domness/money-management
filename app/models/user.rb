class User < ActiveRecord::Base
  validates_presence_of :username, :password, :password_confirmation
  validates_uniqueness_of :username
  validates_confirmation_of :password

  attr_protected :id
  
  attr_accessor :password, :password_confirmation

  def self.authenticate(username, pass)
    u = find(:first, :conditions => ["username = ? AND password = ?", username, pass])
    return nil if u.nil?
    return u
    nil
  end
  
  def password=(pass)
    @password=pass
    self.password = @password
  end

end
