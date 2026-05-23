class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.15.10-ocv.3.63"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.10-ocv.3.63/ocv-darwin-arm64.zip"
      sha256 "6a6b75baa9b62d2fcc0d6448a61dbdf576bb718598cfb9384d11d3b213cdbd42"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.10-ocv.3.63/ocv-darwin-x64.zip"
      sha256 "46a00bb2a44991b41c8b90e2471ffb503f7a331ad0aee3dbe160fcfb4a22b3b2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.10-ocv.3.63/ocv-linux-arm64.tar.gz"
      sha256 "ec04f249413090fd37ea5960573787c9a3cf8b7e09b1962aa7cfe35d464848a8"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.10-ocv.3.63/ocv-linux-x64.tar.gz"
      sha256 "9db63a366bc0abb883d4f8b7dbc4bf34f1dc9a7fe60c2b559b6dffaae7b6214c"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
