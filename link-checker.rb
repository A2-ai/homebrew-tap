class LinkChecker < Formula
  desc "link-checker - a fast and simple link checker"
  homepage "https://github.com/a2-ai/link-checker"
  version "0.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/a2-ai/link-checker/releases/download/v0.2.0/link-checker-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "e0e3fff89d7b56400a2cb45171f6c6cbc92a8a53d6270fc6a21ede836a9b8d89"
    elsif Hardware::CPU.intel?
      url "https://github.com/a2-ai/link-checker/releases/download/v0.2.0/link-checker-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "8857b37622b3767aa80ec9df097f1c57db44056bfdcaf362adcdd0470424dd50"
    end
  end

  def install
    bin.install "link-checker"
  end

  test do
    system "#{bin}/link-checker", "--version"
  end
end
