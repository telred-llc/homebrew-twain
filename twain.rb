

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
  	sha256 "4589cbf96b09dcabeb9d062b1025c485ae6883f9dc71f5582c5874063d5d8065"
  end
  
  def installs
    bin.install "twain"
    
    resource("twain").stage {bin.install "twain_service" => "twain_service"}
  end
end
  
  
 

  
