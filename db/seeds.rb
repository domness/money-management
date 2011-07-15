User.create!( :username => "dominic", :password => "pass", :admin => "1" )
User.create!( :username => "robert", :password => "pass", :admin => "1" )
User.create!( :username => "demo", :password => "demo" )

Bill.create!( :amount => "9.99", 
              :name => "TestBill", 
              :description => "TestBill's Description", 
              :due => "2011-06-01" )

Bill.create!( :amount => "1.27", 
              :name => "TestBill2", 
              :description => "TestBill2's Description", 
              :due => "2011-08-19" )
