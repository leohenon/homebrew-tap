class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode"
  version "1.3.13-ocv.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode/releases/download/v1.3.13-ocv.3.1/ocv-darwin-arm64.zip"
      sha256 "64f5968a39feac497862c6a7805c2d03ca5d19060ceab9a45950badbda92bbf3"
    else
      url "https://github.com/leohenon/opencode/releases/download/v1.3.13-ocv.3.1/ocv-darwin-x64.zip"
      sha256 "4d5cf9194a42cd4c6659f542829f14613cf6a8a4b6f5c91810da5d23ebfbb55f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode/releases/download/v1.3.13-ocv.3.1/ocv-linux-arm64.tar.gz"
      sha256 "e2c9408d73a05731d5746eab0309e786d7433a60bec190750a1d284fb6d06954"
    else
      url "https://github.com/leohenon/opencode/releases/download/v1.3.13-ocv.3.1/ocv-linux-x64.tar.gz"
      sha256 "fe4bd149e2b2affecaa124e7fc42ce48d79ce73c78d8f4ad47c017baaa3e3c81"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
