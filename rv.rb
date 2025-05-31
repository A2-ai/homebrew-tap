class Rv < Formula
  desc "rv - a fast R package installer"
  homepage "https://github.com/a2-ai/rv"
  version "0.7.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/a2-ai/rv/releases/download/v0.7.0/rv-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "c1e3b934c5b5ae8fc1885665654323af0dd05cd4bb5c9a6d774f1e06e63491b2"
    elsif Hardware::CPU.intel?
      url "https://github.com/a2-ai/rv/releases/download/v0.7.0/rv-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "4b96806f00f66ef59e783a802483c5f7600677b14f1e75a80c7f726166233f44"
    end
  end

  def install
    bin.install "rv"
  end

  test do
    system "#{bin}/rv", "--version"
  end
end
