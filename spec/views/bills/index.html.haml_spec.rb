require 'spec_helper'

describe "bills/index.html.haml" do
  before(:each) do
    assign(:bills, [
      stub_model(Bill),
      stub_model(Bill)
    ])
  end

  it "renders a list of bills" do
    render
  end
end
