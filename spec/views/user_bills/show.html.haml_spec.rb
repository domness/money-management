require 'spec_helper'

describe "user_bills/show.html.haml" do
  before(:each) do
    @user_bill = assign(:user_bill, stub_model(UserBill))
  end

  it "renders attributes in <p>" do
    render
  end
end
