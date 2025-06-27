class Rv < Formula
  desc "rv - a fast R package installer"
  homepage "https://github.com/a2-ai/rv"
  version "0.10.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/a2-ai/rv/releases/download/v0.10.0/rv-v0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "39dae0d1e892246c4c1cee0fa5bbad66fc818315244d4ed4622be6f11f8e38e4"
    elsif Hardware::CPU.intel?
      url "https://github.com/a2-ai/rv/releases/download/v0.10.0/rv-v0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "3d2a7a89fd0645957fa16ae5a3fd4df624139b67e9340b6b40beb66e8a0511a6"
    end
  end

  def install
    bin.install "rv"
  end

  test do
    system "#{bin}/rv", "--version"
  end
end
