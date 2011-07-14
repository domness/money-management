class Bill < ActiveRecord::Base
  
  has_many :user_bills, :dependent => :destroy
  has_many :users, :through => :user_bills
  
end
