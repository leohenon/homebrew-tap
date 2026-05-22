class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.15.7-ocv.3.63"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.7-ocv.3.63/ocv-darwin-arm64.zip"
      sha256 "eea4bc95302eb5d9f245292deb7782f179a4f241ef5bd37c28147cba85dbf575"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.7-ocv.3.63/ocv-darwin-x64.zip"
      sha256 "fd55703a837df7319e89fa23aaa10e0dd1f849b1af1b3489cb9adca4c3b31f64"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.7-ocv.3.63/ocv-linux-arm64.tar.gz"
      sha256 "698a699efd0b5d2cdec143a4c12be991458b87be123e366fdbb5f86fdabb5284"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.7-ocv.3.63/ocv-linux-x64.tar.gz"
      sha256 "a7104a67598593989e6258d49ac0aa54cf454d44144f3476a6cffee1d15dafc7"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
