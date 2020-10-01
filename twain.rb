

class Twain < Formula

  desc "Cross-platform Text Expander written in Rust"
  homepage "https://github.com/telred-llc/twain"
  url "https://github.com/telred-llc/twain/files/5310936/twain.tar.gz"
  sha256 "1cc428ea725a216f249b9d11723fe34038449b32d91adc2314d0dab42b09b3fc"
  version "1.0"
  
  #depends_on "cmake" => :build 
  depends_on "cpprestsdk" =>:build  
  depends_on "rabbitmq-c" =>:build
  
  resource "twain" do 
  	url "https://github.com/telred-llc/twain/files/5310935/twain_service.tar.gz"
  	sha256 "4589cbf96b09dcabeb9d062b1025c485ae6883f9dc71f5582c5874063d5d8065"
  end
  
  def install
    bin.install "twain"
    
    resource("twain").stage {bin.install "twain_service" => "twain_service"}
  end
end
  
  
 

  
