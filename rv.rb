class Rv < Formula
  desc "rv - a fast R package installer"
  homepage "https://github.com/a2-ai/rv"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/a2-ai/rv/releases/download/v0.4.1/rv-v0.4.1-x86_64-apple-darwin.tar.gz[arm64]"
      sha256 "97ddb493c94ae6be7f0db1ed4e9e496ac5275a2fa854176b905e808f4fcfbcbd[arm64]"
    elsif Hardware::CPU.intel?
      url "https://github.com/a2-ai/rv/releases/download/v0.4.1/rv-v0.4.1-x86_64-apple-darwin.tar.gz[x64]"
      sha256 "97ddb493c94ae6be7f0db1ed4e9e496ac5275a2fa854176b905e808f4fcfbcbd[x64]"
    end
  end

  def install
    bin.install "rv"
  end

  test do
    system "#{bin}/rv", "--version"
  end
end
