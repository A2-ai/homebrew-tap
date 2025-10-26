class Rv < Formula
  desc "rv - a fast R package installer"
  homepage "https://github.com/a2-ai/rv"
  version "0.15.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/a2-ai/rv/releases/download/v0.15.0/rv-v0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "5236185032b3517c953b9c7a22579099fde4186c7a02ef235c09abb020fa27f3"
    elsif Hardware::CPU.intel?
      url "https://github.com/a2-ai/rv/releases/download/v0.15.0/rv-v0.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "f59d68513758bf7ba38483c69bfb3824e3e93b79fd16b2d72cf36719f011824a"
    end
  end

  def install
    bin.install "rv"
  end

  test do
    system "#{bin}/rv", "--version"
  end
end
