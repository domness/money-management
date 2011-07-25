class Bill < ActiveRecord::Base
  
  has_many :user_bills, :dependent => :destroy
  has_many :users, :through => :user_bills
  
  def to_label
    "#{due.to_s} #{name}"
  end
  
end
