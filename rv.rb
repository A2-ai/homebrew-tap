class Rv < Formula
  desc "rv - a fast R package installer"
  homepage "https://github.com/a2-ai/rv"
  version "0.19.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/a2-ai/rv/releases/download/v0.19.0/rv-v0.19.0-aarch64-apple-darwin.tar.gz"
      sha256 "b2bc2f8ed184867054bd3f88a5095d77ac06f76ad246ff0b63c23b4724d2b763"
    elsif Hardware::CPU.intel?
      url "https://github.com/a2-ai/rv/releases/download/v0.19.0/rv-v0.19.0-x86_64-apple-darwin.tar.gz"
      sha256 "1a4e1a66b84447b3f9d28d1b937c8445d68a5088e97b9a8b753acff613ddc55b"
    end
  end

  def install
    bin.install "rv"
  end

  test do
    system "#{bin}/rv", "--version"
  end
end
