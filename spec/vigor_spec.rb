require 'spec_helper'

describe Vigor do
  it "should have a version" do
    Vigor::VERSION.should be_a(String)
  end

end
