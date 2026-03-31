class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode"
  version "1.3.9-ocv.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode/releases/download/v1.3.9-ocv.3.1/ocv-darwin-arm64.zip"
      sha256 "acf1d280b0335fcee3e4183cae5fe1adecc8231994a708fd8c17b88bcdecae09"
    else
      url "https://github.com/leohenon/opencode/releases/download/v1.3.9-ocv.3.1/ocv-darwin-x64.zip"
      sha256 "32e26a9a0047666a1e1429bcc94057504dae165ccb7639e6dee7002aebb5cab5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode/releases/download/v1.3.9-ocv.3.1/ocv-linux-arm64.tar.gz"
      sha256 "6e6115e229b310970f9416d3c2d5a186e772c90dacc76498ae3fd50305bca4d6"
    else
      url "https://github.com/leohenon/opencode/releases/download/v1.3.9-ocv.3.1/ocv-linux-x64.tar.gz"
      sha256 "d8a8b4820b64fdd8aeb683b70eba6c31e5d857097b31fe01a368a484eaab00d4"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
