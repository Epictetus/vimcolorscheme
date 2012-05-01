require 'spec_helper'

describe ColorSchemeRb::Hex2Term do
  # Just a method to reduce clutter in this test. Delegates to the Hex2Term
  # class in the ColorSchemeRb module.
  def convert value
    ColorSchemeRb::Hex2Term.convert value
  end

  it "correctly convert hex colors to term colors" do
    convert('123456').should  == '23'
    convert('ffffff').should  == '231'
    convert('odadd6').should  == '38'

    convert('231').should     == 'ffffff'
    convert(231).should       == 'ffffff'
    convert(23).should        == '005f5f'
  end

  it "correctly handle hex number with leading hashes" do
    convert('#123456').should == '23'
    convert('#ffffff').should == '231'
    convert('#odadd6').should == '38'
  end
end
