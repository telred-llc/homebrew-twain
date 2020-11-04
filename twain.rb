

class Twain < Formula

  desc "Cross-platform Text Expander written in Rust"
  homepage "https://github.com/telred-llc/twain"
  url "https://github.com/telred-llc/twain/files/5488160/twain.tar.gz"
  sha256 "cbc75ad6fb8dc669b529bfadf07dfac3c72a54288ca778b5fcc17f5728ee20f4"
  version "1.0"
  
  #depends_on "cmake" => :build 
  depends_on "cpprestsdk" =>:build  
  depends_on "rabbitmq-c" =>:build
  
  resource "twain" do 
  	url "https://github.com/telred-llc/twain/files/5488161/twain_service.tar.gz"
  	sha256 "dc2a87d953315084aff0d927ea54c4f952165c8bf2c947041ef118531f428672"
  end
  
  def install
    bin.install "twain"
    
    resource("twain").stage {bin.install "twain_service" => "twain_service"}
  end
end
  
  
 

  
