require 'spec_helper'
require 'ratio_maker'

describe RatioMaker do
  it "widthが機能しているか" do 
    capture(:stdout){
      RatioMaker::Command.new.invoke( :width, [1200, 626, 62.6])
    }.strip.should == "120.0"
  end

  it "heightが機能しているか" do
    capture(:stdout){
      RatioMaker::Command.new.invoke( :height, [1200, 626, 120.0])
    }.strip.should == "62.6"
  end
end
