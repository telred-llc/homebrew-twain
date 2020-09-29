

class Twain < Formula

  desc "Cross-platform Text Expander written in Rust"
  homepage "https://github.com/telred-llc/twain"
  url "https://github.com/telred-llc/twain/files/5298063/twain-mac.tar.gz"
  sha256 "00ad3d20ed69e5e74881f59d47471a6c3bc14638663aaaf97bf709651aed01af"
  version "1.0"
  
  depends_on "cmake" => :build
  depends_on "cpprestsdk" => :build
  depends_on "rabbitmq-c" => :build
  
  def install
    bin.install "twain"
  end
end
  
  
 

  
