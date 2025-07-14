class Rv < Formula
  desc "rv - a fast R package installer"
  homepage "https://github.com/a2-ai/rv"
  version "0.11.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/a2-ai/rv/releases/download/v0.11.0/rv-v0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "65bf5f49fcdecd1f92a1ab5710261b6564536b75edbfd14b77b84ad25199b320"
    elsif Hardware::CPU.intel?
      url "https://github.com/a2-ai/rv/releases/download/v0.11.0/rv-v0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "d1ad68827c84725f8a15fd371e28427c531dbfc26b68a2493e9e713045fb1837"
    end
  end

  def install
    bin.install "rv"
  end

  test do
    system "#{bin}/rv", "--version"
  end
end
