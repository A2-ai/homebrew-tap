class Rv < Formula
  desc "rv - a fast R package installer"
  homepage "https://github.com/a2-ai/rv"
  version "0.6.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/a2-ai/rv/releases/download/v0.6.1/rv-v0.6.1-aarch64-apple-darwin.tar.gz"
      sha256 "03e94fa9deb0baaf1b663da44dbb6a74d9ba5e488406df66289362fc285adb4a"
    elsif Hardware::CPU.intel?
      url "https://github.com/a2-ai/rv/releases/download/v0.6.1/rv-v0.6.1-x86_64-apple-darwin.tar.gz"
      sha256 "3d72e730b3e977687bd1b0f9161b6f69f56cd37240e926ba1c3e43f13cde4e30"
    end
  end

  def install
    bin.install "rv"
  end

  test do
    system "#{bin}/rv", "--version"
  end
end
