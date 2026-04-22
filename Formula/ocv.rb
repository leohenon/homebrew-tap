class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.14.20-ocv.3.26"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.20-ocv.3.26/ocv-darwin-arm64.zip"
      sha256 "a6c6e67d715611e3177db34d99e29d1aee5fdf1ea4f3faf32b3aff2e3eb9c611"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.20-ocv.3.26/ocv-darwin-x64.zip"
      sha256 "ccdcedfda35246f60632e09b2499dc954f9d3427e7b9ba1574d47fc0d082fc5d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.20-ocv.3.26/ocv-linux-arm64.tar.gz"
      sha256 "80a710be904c83a6cc5fa17d4ff42a5f6299fb6f59f52891642e5e817a4d6c4a"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.20-ocv.3.26/ocv-linux-x64.tar.gz"
      sha256 "9b13a6e2958e3bba5cd219d18391a753a523232ca9d791b10fabb835663addc7"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
