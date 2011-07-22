User.create!( :username => "dominic", :password => "pass", :admin => "1" )
User.create!( :username => "mathew", :password => "pass")
User.create!( :username => "claire", :password => "pass")
User.create!( :username => "zoe", :password => "pass")
User.create!( :username => "charlotte", :password => "pass")

Bill.create!(
  :amount => '73.50',
  :name => 'NPower',
  :description => 'Gas/Electricity',
  :due => '2011-03-21'
)

Bill.create!(
  :amount => '36.12',
  :name => 'NPower',
  :description => 'Gas/Electricity',
  :due => '2011-06-29'
)

Bill.create!(
  :amount => '2.68',
  :name => 'BT',
  :description => 'Phone Line Rental',
  :due => '2011-07-21'
)

Bill.create!(
  :amount => '1.70',
  :name => 'O2',
  :description => 'Broadband',
  :due => '2011-07-25'
)
