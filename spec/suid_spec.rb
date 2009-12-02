require 'lib/suid'

describe SUID do
  it "should generate sorta unique ids" do
    lambda { SUID.generate }.should_not raise_error
  end
  
  it "should not generate duplicates in a decent size set" do 
    suids = []
    1000.times { suids << SUID.generate }
    suids.size.should == suids.uniq.size
  end
  
  it "should generate duplicate suids if instructed to do so" do
    srand(0xf00)
    s1 = SUID.generate
    srand(0xf00)
    s2 = SUID.generate
    s1.should == s2
  end
end