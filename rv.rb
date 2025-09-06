class Rv < Formula
  desc "rv - a fast R package installer"
  homepage "https://github.com/a2-ai/rv"
  version "0.13.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/a2-ai/rv/releases/download/v0.13.2/rv-v0.13.2-aarch64-apple-darwin.tar.gz"
      sha256 "80b6a110c8bbc96e9ec21eb825db70e1566c124119c84239bfaf437719d4f0c9"
    elsif Hardware::CPU.intel?
      url "https://github.com/a2-ai/rv/releases/download/v0.13.2/rv-v0.13.2-x86_64-apple-darwin.tar.gz"
      sha256 "9f2bea99d15cadca8fff1fe4e4f63d60c1138ba10a4b346c75af771a4358757a"
    end
  end

  def install
    bin.install "rv"
  end

  test do
    system "#{bin}/rv", "--version"
  end
end
