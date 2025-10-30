class Rv < Formula
  desc "rv - a fast R package installer"
  homepage "https://github.com/a2-ai/rv"
  version "0.16.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/a2-ai/rv/releases/download/v0.16.0/rv-v0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "117c696d69f80f285967ee8fbae3b4215d622e0b9ac2f065dcb44670abbbfce9"
    elsif Hardware::CPU.intel?
      url "https://github.com/a2-ai/rv/releases/download/v0.16.0/rv-v0.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "564f23804eb2598a5d79680dc8500e11d07cf053e9286a737f48ed8a9bec7d92"
    end
  end

  def install
    bin.install "rv"
  end

  test do
    system "#{bin}/rv", "--version"
  end
end
