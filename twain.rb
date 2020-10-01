

class Twain < Formula

  desc "Cross-platform Text Expander written in Rust"
  homepage "https://github.com/telred-llc/twain"
  url "https://github.com/telred-llc/twain/files/5310936/twain.tar.gz"
  sha256 "0b911b630da59d921407fab6ea7c7d700e75e693add0d985d3f4892d42141f58"
  version "1.0"
  
  #depends_on "cmake" => :build 
  depends_on "cpprestsdk" =>:build  
  depends_on "rabbitmq-c" =>:build
  
  resource "twain" do 
  	url "https://github.com/telred-llc/twain/files/5310935/twain_service.tar.gz"
  	sha256 "42873246f3fbb37d632b6c4374c88a7b42fcade1c4d09773382af67c51d929ec"
  end
  
  def install
    bin.install "twain"
    
    resource("twain").stage {bin.install "twain_service" => "twain_service"}
  end
end
  
  
 

  
