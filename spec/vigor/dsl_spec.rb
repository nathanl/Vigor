require 'spec_helper'

describe Vigor::DSL do
  before :each do
    @dsl = Vigor::DSL.new
    @dsl.disable_comments!
  end
  describe "setting colors" do

    it "should set a gui color" do
      vimrc = @dsl.set_gui_color('Search', :background => 'yellow', :text => 'black')
      vimrc.should eq(%Q[:highlight Search guibg=yellow guifg=black])

    end

  end

  describe "commenting" do
    it "should have comments"

    it "should allow disabling of comments"
  end
end
