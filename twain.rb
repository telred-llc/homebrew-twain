

class Twain < Formula

  desc "Cross-platform Text Expander written in Rust"
  homepage "https://github.com/telred-llc/twain"
  url "https://github.com/telred-llc/twain/files/5298063/twain-mac.tar.gz"
  sha256 "f5d6b806c0db77a9acfc99a50ad7246125ea4b6364ccf8328d06d6e6467c7209"
  version "1.0"
  
  depends_on "cmake" => :build
  depends_on "cpprestsdk" => :build
  depends_on "rabbitmq-c" => :build
  
  def install
    bin.install "twain"
  end
end
  
  
 

  
