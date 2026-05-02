class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.14.31-ocv.3.31"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.31-ocv.3.31/ocv-darwin-arm64.zip"
      sha256 "2710ec2d9c66bc981c0c7e13116acc1dafe65d42fe4d151531ebfbcc5a9c97db"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.31-ocv.3.31/ocv-darwin-x64.zip"
      sha256 "9c1716caabf49ceab9ed803be762f041e1acf4923c5ddd9c5fdc7030691b890b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.31-ocv.3.31/ocv-linux-arm64.tar.gz"
      sha256 "0515865f7529b0024443ab6848e4913a15d615f02ed9ec6b82ddb85e0a980949"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.31-ocv.3.31/ocv-linux-x64.tar.gz"
      sha256 "e333c87054733b4163d99fe12904cd9561762324473b0d33611a164ff538af5a"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
