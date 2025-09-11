class LinkChecker < Formula
  desc "link-checker - a fast and simple link checker"
  homepage "https://github.com/a2-ai/link-checker"
  version "0.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/a2-ai/link-checker/releases/download/v0.4.0/link-checker-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "d1e8d84ab714e99d1ccd9cc66fb178cf813dfd7fbfd5e1c8c2dadb11e10c6395"
    elsif Hardware::CPU.intel?
      url "https://github.com/a2-ai/link-checker/releases/download/v0.4.0/link-checker-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "724597b35a329306e78f55867b1ecae19f6153c198aa8ff22545b7b617df58f0"
    end
  end

  def install
    bin.install "link-checker"
  end

  test do
    system "#{bin}/link-checker", "--version"
  end
end
