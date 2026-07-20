class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.18.4-ocv.4.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.4-ocv.4.8/ocv-darwin-arm64.zip"
      sha256 "063f852a652b82c6676cbb33ed0f7bd729d8bfe0001740fc7b1c3f853a3a60c1"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.4-ocv.4.8/ocv-darwin-x64.zip"
      sha256 "68f751082b227d9691e741803ef9613315323bd540bcd67c3ff68c916e407042"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.4-ocv.4.8/ocv-linux-arm64.tar.gz"
      sha256 "598324ada1b79250a77a2daba406e6a722f79f4321e6c0e5fab4322b782f9408"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.4-ocv.4.8/ocv-linux-x64.tar.gz"
      sha256 "9b05c3f35d42a60c0dcce75cbce5480d126c20de6f0dbe467083d2aa5f641b25"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
