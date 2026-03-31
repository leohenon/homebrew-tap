class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode"
  version "1.3.9-ocv.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode/releases/download/v1.3.9-ocv.3.0/ocv-darwin-arm64.zip"
      sha256 "04478a8f69b0291954e6e183692b4837c088ab8b78393f86de826c117ddd9e6b"
    else
      url "https://github.com/leohenon/opencode/releases/download/v1.3.9-ocv.3.0/ocv-darwin-x64.zip"
      sha256 "317531e02164b23f69e3573b8b16b809100a5b1733e123b2c47bc7b737d28f0d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode/releases/download/v1.3.9-ocv.3.0/ocv-linux-arm64.tar.gz"
      sha256 "6a586e692aaefd426fa2573e4b6f7e6e8c6340417e4ee3bf566972a18c1771b5"
    else
      url "https://github.com/leohenon/opencode/releases/download/v1.3.9-ocv.3.0/ocv-linux-x64.tar.gz"
      sha256 "f400703ee371db765b4baec6871ed25f9073316bdcf4ce7e0b0678703294b9e3"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
