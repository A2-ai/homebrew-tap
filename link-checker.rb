class LinkChecker < Formula
  desc "link-checker - a fast and simple link checker"
  homepage "https://github.com/a2-ai/link-checker"
  version "0.5.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/a2-ai/link-checker/releases/download/v0.5.0/link-checker-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "2ef368ef0fd6bf45cb72e404b67e195d12cf52445a4269b2de64f94a86874f66"
    elsif Hardware::CPU.intel?
      url "https://github.com/a2-ai/link-checker/releases/download/v0.5.0/link-checker-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "3cbdb15dd1b5e2251705e4c84b470a177a8105650a69deea94c2f0771bb4098a"
    end
  end

  def install
    bin.install "link-checker"
  end

  test do
    system "#{bin}/link-checker", "--version"
  end
end
