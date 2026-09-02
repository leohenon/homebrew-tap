class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.18.26-ocv.4.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.26-ocv.4.10/ocv-darwin-arm64.zip"
      sha256 "b477ab5057bf5ffeb52e41124039b05498c9608a883cc9a1bf3d285ade9a2567"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.26-ocv.4.10/ocv-darwin-x64.zip"
      sha256 "8be6d7cea4148919b5b7a7cf2074f457cb073ff826c08a514ccfdd5ff2d00988"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.26-ocv.4.10/ocv-linux-arm64.tar.gz"
      sha256 "74a966bfec21bd7496a5b6bfc2f7c431c40904c1a7318c6f5d72c832ce7ca8cb"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.26-ocv.4.10/ocv-linux-x64.tar.gz"
      sha256 "921a29220f4ca755e32bf3cb272d389860da4eb9fa395c2be7d8344d2715e33c"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
