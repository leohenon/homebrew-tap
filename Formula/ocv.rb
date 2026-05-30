class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.15.12-ocv.3.67"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.12-ocv.3.67/ocv-darwin-arm64.zip"
      sha256 "de0d694e0aafe1e3e02bedf81259193193dd01089e192d50e8abce0150f933e5"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.12-ocv.3.67/ocv-darwin-x64.zip"
      sha256 "3f949abf58c0aa62b7237f4c8f7d5d569c106ca5de3fcac92bb66e69cf8ac12f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.12-ocv.3.67/ocv-linux-arm64.tar.gz"
      sha256 "2b0687871272991d65b0d2d0b04b1bb18635e690251b4a6d76d5d0ca970718d6"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.12-ocv.3.67/ocv-linux-x64.tar.gz"
      sha256 "5da74c7e577af305335843a71bcd4d5df0f00a9a127cc7051abfc40ec9b53117"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
