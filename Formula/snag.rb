class Snag < Formula
  desc "SNAG (Simple Network API Gopher) is a high-performance, keyboard-driven Terminal User Interface (TUI) designed specifically for developers who want to explore and test FastAPI endpoints without leaving the terminal."
  homepage "https://github.com/4nddrs/snag"
  url "https://github.com/4nddrs/snag/releases/download/v1.0.1/snag-mac.tar.gz"
  sha256 "a046805082af8e9fd77c766432401623aeb86c982273b7d3292697e8e38d945f"
  version "1.0.1"

if OS.mac?
    url "https://github.com/4nddrs/snag/releases/download/v1.0.1/snag-mac.tar.gz"
    sha256 "a046805082af8e9fd77c766432401623aeb86c982273b7d3292697e8e38d945f"
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/4nddrs/snag/releases/download/v1.0.1/snag-linux-arm64.tar.gz"
      sha256 "cbe98fec0d89435729e3d40992111b6764a050c78b9cecca02ad2a9d117543c6"
    else
      url "https://github.com/4nddrs/snag/releases/download/v1.0.1/snag-linux-amd64.tar.gz"
      sha256 "3f8f8df58575692572a123cd0b2d53a51879df3e448e4af6bd06793a2de389b4"
    end
  end

  def install
    bin.install "snag"
  end

  def post_install
    chmod 0755, bin/"snag"
  end
end
