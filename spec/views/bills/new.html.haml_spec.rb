require 'spec_helper'

describe "bills/new.html.haml" do
  before(:each) do
    assign(:bill, stub_model(Bill).as_new_record)
  end

  it "renders new bill form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bills_path, :method => "post" do
    end
  end
end
