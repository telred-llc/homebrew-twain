

class Twain < Formula

  desc "Cross-platform Text Expander written in Rust"
  homepage "https://github.com/telred-llc/twain"
  url "https://github.com/telred-llc/twain/files/5310936/twain.tar.gz"
  sha256 "53ae68588564dc5d65ecafdac0f3b5114feeebc6a903aec357d72778e909a218"
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
  
  
 

  
