require File.dirname(__FILE__) + '/../lib/display_flash_helper'
require 'rubygems'
require 'test/spec'
require 'mocha'

describe "ApplicationHelper" do
  include DisplayFlashHelper
  
  attr_reader :flash
  
  def setup 
    @flash = {}
  end
  
  it "should create nothing when flash is empty" do
  	display_flash.should.be.empty
  end

  it "should create warning flash" do
  	flash[:warning] = "This is a warning"
  	self.expects(:content_tag).with(:div, "This is a warning", :id => "flash", :class => "flash warning")
  	display_flash
  end

  it "should create notice flash" do
  	flash[:notice] = "This is a notice"
  	self.expects(:content_tag).with(:div, "This is a notice", :id => "flash", :class => "flash notice")
  	display_flash
  end

  it "should create error flash" do
  	flash[:error] = "This is an error"
  	self.expects(:content_tag).with(:div, "This is an error", :id => "flash", :class => "flash error")
  	display_flash
  end
end
