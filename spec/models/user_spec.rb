require 'spec_helper'

describe User do
  describe "validations" do
    it { should validate_presence_of(:username) }
    it { should validate_presence_of(:salt) }
    it { should validate_uniqueness_of(:username) }
  end
end
