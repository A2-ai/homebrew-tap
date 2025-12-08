class Rv < Formula
  desc "rv - a fast R package installer"
  homepage "https://github.com/a2-ai/rv"
  version "0.17.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/a2-ai/rv/releases/download/v0.17.0/rv-v0.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "70859c3cb4a97452297a14ec62db3d367a105b2b1d4ce7dc80f9f9a704582492"
    end
  end

  def install
    bin.install "rv"
  end

  test do
    system "#{bin}/rv", "--version"
  end
end
