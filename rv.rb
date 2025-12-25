class Rv < Formula
  desc "rv - a fast R package installer"
  homepage "https://github.com/a2-ai/rv"
  version "0.17.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/a2-ai/rv/releases/download/v0.17.1/rv-v0.17.1-aarch64-apple-darwin.tar.gz"
      sha256 "e8ccb393118bfc044e60d77e18d5eb84bdd2564bb6260769b9c034f1dedddf7e"
    elsif Hardware::CPU.intel?
      url "https://github.com/a2-ai/rv/releases/download/v0.17.1/rv-v0.17.1-x86_64-apple-darwin.tar.gz"
      sha256 "b5525259154366c5bb3aa10613087e54a5a8db50c335c6debd24d5cbcf227bca"
    end
  end

  def install
    bin.install "rv"
  end

  test do
    system "#{bin}/rv", "--version"
  end
end
