class LinkChecker < Formula
  desc "link-checker - a fast and simple link checker"
  homepage "https://github.com/a2-ai/link-checker"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/a2-ai/link-checker/releases/download/v0.5.0/link-checker-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "2534e51eb971701228d3e34770024af7c1b2c00582e23511f81b92da49b37e6f"
    elsif Hardware::CPU.intel?
      url "https://github.com/a2-ai/link-checker/releases/download/v0.5.0/link-checker-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "b283fd9b8d7558545cc4133eb657ded86872664907e9c1320bbfcff7ec207b83"
    end
  end

  def install
    bin.install "link-checker"
  end

  test do
    system "#{bin}/link-checker", "--version"
  end
end
