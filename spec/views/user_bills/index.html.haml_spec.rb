require 'spec_helper'

describe "user_bills/index.html.haml" do
  before(:each) do
    assign(:user_bills, [
      stub_model(UserBill),
      stub_model(UserBill)
    ])
  end

  it "renders a list of user_bills" do
    render
  end
end
