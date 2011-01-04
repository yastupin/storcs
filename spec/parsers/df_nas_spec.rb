require File.expand_path(File.dirname(__FILE__) + "/../spec_helper")

describe Storcs::Parsers::DfNas do
  it "parses a df -k output" do
    parsed = Storcs::Parsers::DfNas.new('spec/data/df_nas.txt')
    parsed.device.should_not be_nil
    parsed.device.used.should == 612376576
    parsed.device.size.should == 814572544
    parsed.device.free.should == 202195968
  end
end
