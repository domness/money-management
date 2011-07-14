require 'spec_helper'

describe "user_bills/new.html.haml" do
  before(:each) do
    assign(:user_bill, stub_model(UserBill).as_new_record)
  end

  it "renders new user_bill form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_bills_path, :method => "post" do
    end
  end
end
