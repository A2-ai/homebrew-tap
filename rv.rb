class Rv < Formula
  desc "rv - a fast R package installer"
  homepage "https://github.com/a2-ai/rv"
  version "0.5.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/a2-ai/rv/releases/download/v0.5.1/rv-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "30119816d550706c81a854471522c8de9107f52a5ce199b90227766182eb3313"
    elsif Hardware::CPU.intel?
      url "https://github.com/a2-ai/rv/releases/download/v0.5.1/rv-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "ca847cb5b1e91ef551da8a1ae3383860167c79e8ad713bbbe3382d309ed27353"
    end
  end

  def install
    bin.install "rv"
  end

  test do
    system "#{bin}/rv", "--version"
  end
end
