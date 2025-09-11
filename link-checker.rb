class LinkChecker < Formula
  desc "link-checker - a fast and simple link checker"
  homepage "https://github.com/a2-ai/link-checker"
  version "0.4.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/a2-ai/link-checker/releases/download/v0.4.1/link-checker-v0.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "bcfc2391ee09cc45612d5713e5c7098a6f82b72e1772ea446956399532141957"
    elsif Hardware::CPU.intel?
      url "https://github.com/a2-ai/link-checker/releases/download/v0.4.1/link-checker-v0.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "2458f0bfbe67ca88e42973937aeede453fcde24a84e771c4c2d3f86d429cc372"
    end
  end

  def install
    bin.install "link-checker"
  end

  test do
    system "#{bin}/link-checker", "--version"
  end
end
