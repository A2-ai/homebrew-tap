class Rv < Formula
  desc "rv - a fast R package installer"
  homepage "https://github.com/a2-ai/rv"
  version "0.6.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/a2-ai/rv/releases/download/v0.6.2/rv-v0.6.2-aarch64-apple-darwin.tar.gz"
      sha256 "500b7e7f582acec17e6b6229e29d19b605ea622e0fa8ac4ac6118eec3b82965a"
    elsif Hardware::CPU.intel?
      url "https://github.com/a2-ai/rv/releases/download/v0.6.2/rv-v0.6.2-x86_64-apple-darwin.tar.gz"
      sha256 "c99b7fbe5cc3bb0c6d7404888ae3f77d13f67ddb7839bf1f58803b4e6e461761"
    end
  end

  def install
    bin.install "rv"
  end

  test do
    system "#{bin}/rv", "--version"
  end
end
