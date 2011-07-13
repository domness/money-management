require 'spec_helper'

describe "logins/edit.html.haml" do
  before(:each) do
    @login = assign(:login, stub_model(Login))
  end

  it "renders the edit login form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => logins_path(@login), :method => "post" do
    end
  end
end
