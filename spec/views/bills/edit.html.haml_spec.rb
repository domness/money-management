require 'spec_helper'

describe "bills/edit.html.haml" do
  before(:each) do
    @bill = assign(:bill, stub_model(Bill))
  end

  it "renders the edit bill form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bills_path(@bill), :method => "post" do
    end
  end
end
