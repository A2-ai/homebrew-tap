class Rv < Formula
  desc "rv - a fast R package installer"
  homepage "https://github.com/a2-ai/rv"
  version "0.18.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/a2-ai/rv/releases/download/v0.18.0/rv-v0.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "acc1ca4187f0a0c083ba909f8d1e96fbd278d7be761647c1bacab6a983b0b8fb"
    elsif Hardware::CPU.intel?
      url "https://github.com/a2-ai/rv/releases/download/v0.18.0/rv-v0.18.0-x86_64-apple-darwin.tar.gz"
      sha256 "ebe1277bc23d9bf808c50090402f1de7f405e8a1e575e8ebedad36c17ce3eed1"
    end
  end

  def install
    bin.install "rv"
  end

  test do
    system "#{bin}/rv", "--version"
  end
end
