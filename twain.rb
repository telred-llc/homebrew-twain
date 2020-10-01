

class Twain < Formula

  desc "Cross-platform Text Expander written in Rust"
  homepage "https://github.com/telred-llc/twain"
  url "https://github.com/telred-llc/twain/files/5311424/twain.tar.gz"
  sha256 "88d77a32e0dbcca782fe4419bcd7f7596d0293cb432da63df7383b906a22feac"
  version "1.0"
  
  #depends_on "cmake" => :build 
  depends_on "cpprestsdk" =>:build  
  depends_on "rabbitmq-c" =>:build
  
  resource "twain" do 
  	url "https://github.com/telred-llc/twain/files/5311425/twain_service.tar.gz"
  	sha256 "173eb57d2aec111ad0ce9eb15abf77cfcd287c2ead3226c3007a9b3cc5dae527"
  end
  
  def install
    bin.install "twain"
    
    resource("twain").stage {bin.install "twain_service" => "twain_service"}
  end
end
  
  
 

  
