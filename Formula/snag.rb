class Snag < Formula
  desc "SNAG (Simple Network API Gopher) is a high-performance, keyboard-driven Terminal User Interface (TUI) designed specifically for developers who want to explore and test FastAPI endpoints without leaving the terminal."
  homepage "https://github.com/4nddrs/snag"
  url "https://github.com/4nddrs/snag/releases/download/v1.0.0/snag.tar.gz"
  sha256 "5849C8F4892EAD7A8440D188B9A45B48A4AFF3674B2C380251DBB23B739F39F7"
  version "1.0.0"

  def install
    bin.install "snag"
    chmod 0755, bin/"snag"
  end
end
