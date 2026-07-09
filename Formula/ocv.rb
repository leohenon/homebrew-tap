class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.17.17-ocv.4.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.17-ocv.4.7/ocv-darwin-arm64.zip"
      sha256 "edb2dd93120dea6db6f52821e5cf2351c86789fa1e1327ea9944617632c0438e"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.17-ocv.4.7/ocv-darwin-x64.zip"
      sha256 "7b85768877965d7fe3dd566368ccaff497c78a107b85061ac8d6709172ba5303"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.17-ocv.4.7/ocv-linux-arm64.tar.gz"
      sha256 "f83f5a881d7e0fad560d721786786a54c81418aee3f400e12196a9cd86549d5a"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.17-ocv.4.7/ocv-linux-x64.tar.gz"
      sha256 "eddbfbd607b81a0c9290b3bd8a024ec10ee124e5e13d45303cabb7121a9343af"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
