class CreateUserBills < ActiveRecord::Migration
  def self.up
    create_table :user_bills do |t|
      t.references :user
      t.references :bill
      t.timestamps
    end
  end

  def self.down
    drop_table :user_bills
  end
end
