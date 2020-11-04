

class Twain < Formula

  desc "Cross-platform Text Expander written in Rust"
  homepage "https://github.com/telred-llc/twain"
  url "https://github.com/telred-llc/twain/files/5311424/twain-mac.tar.gz"
  sha256 "173eb57d2aec111ad0ce9eb15abf77cfcd287c2ead3226c3007a9b3cc5dae527"
  version "1.0"
  
  #depends_on "cmake" => :build 
  depends_on "cpprestsdk" =>:build  
  depends_on "rabbitmq-c" =>:build
  
  resource "twain" do 
  	url "https://github.com/telred-llc/twain/files/5311425/twain_service-mac.tar.gz"
  	sha256 "dc2a87d953315084aff0d927ea54c4f952165c8bf2c947041ef118531f428672"
  end
  
  def install
    bin.install "twain-mac"
    
    resource("twain-mac").stage {bin.install "twain_service-mac" => "twain_service-mac"}
  end
end
  
  
 

  
