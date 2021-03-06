class User < ActiveRecord::Base
  
  has_many :user_bills, :dependent => :destroy
  has_many :bills, :through => :user_bills
  
  validates_presence_of :username, :password
  validates_uniqueness_of :username

  def self.authenticate(username, pass)
    u = find(:first, :conditions => ["username = ? AND password = ?", username, pass])
    return nil if u.nil?
    return u
    nil
  end
  
  def to_s
    username
  end

end
