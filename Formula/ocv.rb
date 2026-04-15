class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.4.6-ocv.3.24"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.6-ocv.3.24/ocv-darwin-arm64.zip"
      sha256 "9635039368c4cc1a8265bfa3d8d61405a3036aa788c14633a18321aaaff73220"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.6-ocv.3.24/ocv-darwin-x64.zip"
      sha256 "314e2c5dc8089c475f90ac281f76a994cd8c518d0a0de534b416e761948dea40"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.6-ocv.3.24/ocv-linux-arm64.tar.gz"
      sha256 "005b313b4af524778809699ffff03b048ef8bdb625e6a85354144903ca19167c"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.6-ocv.3.24/ocv-linux-x64.tar.gz"
      sha256 "49d20d5731db86b1ec99de81e9bf4018c436b5dc7140fbc8e9cfc95729fa42d0"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
