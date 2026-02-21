class Snag < Formula
  desc "SNAG (Simple Network API Gopher) is a high-performance, keyboard-driven Terminal User Interface (TUI) designed specifically for developers who want to explore and test FastAPI endpoints without leaving the terminal."
  homepage "https://github.com/4nddrs/snag"
  url "https://github.com/4nddrs/snag/releases/download/v1.0.0/snag.tar.gz"
  sha256 "5849C8F4892EAD7A8440D188B9A45B48A4AFF3674B2C380251DBB23B739F39F7"
  version "1.0.0"

if OS.mac?
    url "https://github.com/4nddrs/snag/releases/download/v1.0.0/snag.tar.gz"
    sha256 "5849C8F4892EAD7A8440D188B9A45B48A4AFF3674B2C380251DBB23B739F39F7"
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/4nddrs/snag/releases/download/v1.0.0/snag-linux-arm64.tar.gz"
      sha256 "D4A5D6281D5FA5F33E4A3245A30DC704CB7FE947F20F0671CCD01ED580327CFC"
    else
      url "https://github.com/4nddrs/snag/releases/download/v1.0.0/snag-linux-amd64.tar.gz"
      sha256 "22037D4D17AE2AA45C6F3F7453DCCC0024AB2C26AEE5DD9B29922CCC8A90597A"
    end
  end

  def install
    bin.install "snag"
  end

  def post_install
    chmod 0755, bin/"snag"
  end
end
