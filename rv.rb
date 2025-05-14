class Rv < Formula
  desc "rv - a fast R package installer"
  homepage "https://github.com/a2-ai/rv"
  version "0.6.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/a2-ai/rv/releases/download/v0.6.0/rv-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "ced4645c5acf1002be13ae24234a5290a437cddb66c6bfa0b84d2301c339452a"
    elsif Hardware::CPU.intel?
      url "https://github.com/a2-ai/rv/releases/download/v0.6.0/rv-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "2322367d6094cc6abc552874b4ba5c1587cd1e82934e00371be6b2469b06abb2"
    end
  end

  def install
    bin.install "rv"
  end

  test do
    system "#{bin}/rv", "--version"
  end
end
