class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.14.19-ocv.3.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.19-ocv.3.25/ocv-darwin-arm64.zip"
      sha256 "6c2cafc0c230edcc691258beb392b0d28b65eefdb68159bbaca19540a4e2b6a3"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.19-ocv.3.25/ocv-darwin-x64.zip"
      sha256 "eb38a63f9c108b64041391722f085c8a283c4df7fac7ebcf24d5f7d47c4425c2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.19-ocv.3.25/ocv-linux-arm64.tar.gz"
      sha256 "4a03ce6a13e8d78daa7e9cbbf5c9fa6c22ff942d344b8971137e6d08dae7b3ea"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.19-ocv.3.25/ocv-linux-x64.tar.gz"
      sha256 "5160a790b7515eae4f6c019c4ff4a009a72270f48caeb8d31d53ac7fe0dccbf6"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
