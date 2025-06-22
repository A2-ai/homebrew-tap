class Rv < Formula
  desc "rv - a fast R package installer"
  homepage "https://github.com/a2-ai/rv"
  version "0.9.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/a2-ai/rv/releases/download/v0.9.0/rv-v0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "9516905ec8948e4455e73e45ce9a1c997d0db33122fce701d1e6d6021b30d9f2"
    elsif Hardware::CPU.intel?
      url "https://github.com/a2-ai/rv/releases/download/v0.9.0/rv-v0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "fc9a38902d89999eb3705bf0b32384989d24c35416198eeea792cfaf6b080559"
    end
  end

  def install
    bin.install "rv"
  end

  test do
    system "#{bin}/rv", "--version"
  end
end
