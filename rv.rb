class Rv < Formula
  desc "rv - a fast R package installer"
  homepage "https://github.com/a2-ai/rv"
  version "0.13.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/a2-ai/rv/releases/download/v0.13.0/rv-v0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "4f264525b687c1dae1428cef854dee5323e32c9ba35a8d864ec7b45b2360a4a9"
    elsif Hardware::CPU.intel?
      url "https://github.com/a2-ai/rv/releases/download/v0.13.0/rv-v0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "14885120e5534df0578824bd39b15f4b78625e9ea2cd07a8a95a47671269426d"
    end
  end

  def install
    bin.install "rv"
  end

  test do
    system "#{bin}/rv", "--version"
  end
end
