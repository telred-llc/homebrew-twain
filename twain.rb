

class Twain < Formula

  desc "Cross-platform Text Expander written in Rust"
  homepage "https://github.com/telred-llc/twain"
  url "https://github.com/telred-llc/twain/files/5310462/twain.tar.gz"
  sha256 "972e8544baee1fc2cdfbeb2d94e54228d89506153e9f494ffa5b38b5ff7b15da"
  version "1.0"
  
  depends_on "cmake" 
  depends_on "cpprestsdk" 
  depends_on "rabbitmq-c"
  
  resource "twain" do 
  	url "https://github.com/telred-llc/twain/files/5310461/twain_service.tar.gz"
  	sha256 "fca054b06d82c5dae20171bf57315b227b556b0cc0a94ee955edf061189243cf"
  end
  
  def install
    bin.install "twain"
    
    resource("twain").stage {bin.install "twain-service" => "twain"}
  end
end
  
  
 

  
