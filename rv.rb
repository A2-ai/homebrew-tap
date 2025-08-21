class Rv < Formula
  desc "rv - a fast R package installer"
  homepage "https://github.com/a2-ai/rv"
  version "0.13.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/a2-ai/rv/releases/download/v0.13.1/rv-v0.13.1-aarch64-apple-darwin.tar.gz"
      sha256 "8d963f9d9bd9ad842f3c98ed03095409b4773ad4539e43a53dba163d86a3a648"
    elsif Hardware::CPU.intel?
      url "https://github.com/a2-ai/rv/releases/download/v0.13.1/rv-v0.13.1-x86_64-apple-darwin.tar.gz"
      sha256 "3f2ca5dc4ba7ef1967b03880bdb322728ab549f8b4975342cf4a634945a0933b"
    end
  end

  def install
    bin.install "rv"
  end

  test do
    system "#{bin}/rv", "--version"
  end
end
