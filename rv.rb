class Rv < Formula
  desc "rv - a fast R package installer"
  homepage "https://github.com/a2-ai/rv"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/a2-ai/rv/releases/download/v0.5.0/rv-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "010eb961dc8da4b419dd7a0af033e67c5922da34ba4750e9118f57a23d48c6f6"
    elsif Hardware::CPU.intel?
      url "https://github.com/a2-ai/rv/releases/download/v0.5.0/rv-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "e18fd0ea98263cc5a8d95f9b081449969ced680047ca789ada0f92e426184ff0"
    end
  end

  def install
    bin.install "rv"
  end

  test do
    system "#{bin}/rv", "--version"
  end
end
