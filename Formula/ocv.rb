class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.17.12-ocv.4.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.12-ocv.4.4/ocv-darwin-arm64.zip"
      sha256 "a786ed628125f9365ccf55e6ac3e3ea564dc40b0a05fd5a2b4ab6bce81d7d28e"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.12-ocv.4.4/ocv-darwin-x64.zip"
      sha256 "f5c963375ca0993b4c2dea2618a1bd0ffdf513695de8adafa094fd7167be33c5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.12-ocv.4.4/ocv-linux-arm64.tar.gz"
      sha256 "968426ab5885b9d333859845e1b8c6d33d0b1d2285947297497ee2ce5479323e"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.12-ocv.4.4/ocv-linux-x64.tar.gz"
      sha256 "28330e8725604c31cb468cdd58a037f6628050fb066008da28a48dd7f9e5ba8c"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
