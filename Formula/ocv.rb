class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.15.5-ocv.3.62"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.5-ocv.3.62/ocv-darwin-arm64.zip"
      sha256 "0fce2c135d29c9284da5fd6c1af9568cffc34206b574370cb0149934dbfbf38f"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.5-ocv.3.62/ocv-darwin-x64.zip"
      sha256 "3db4aac87b10650090ce8ed8061143cf00e77e39a47c665a5d57b8ccd75a569c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.5-ocv.3.62/ocv-linux-arm64.tar.gz"
      sha256 "1873d3dae522ca3be65ed107b0a584f4d71d4f0fb6f7af09b69d89afbbbef5e2"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.5-ocv.3.62/ocv-linux-x64.tar.gz"
      sha256 "13515fd0ce7f8bd8536baec0be8bc72fb1977764453642b8669fa1574d0d16dc"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
