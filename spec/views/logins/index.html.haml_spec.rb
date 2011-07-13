require 'spec_helper'

describe "logins/index.html.haml" do
  before(:each) do
    assign(:logins, [
      stub_model(Login),
      stub_model(Login)
    ])
  end

  it "renders a list of logins" do
    render
  end
end
