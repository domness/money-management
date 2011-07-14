require 'spec_helper'

describe "user_bills/edit.html.haml" do
  before(:each) do
    @user_bill = assign(:user_bill, stub_model(UserBill))
  end

  it "renders the edit user_bill form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_bills_path(@user_bill), :method => "post" do
    end
  end
end
