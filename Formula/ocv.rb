class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.14.50-ocv.3.51"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.50-ocv.3.51/ocv-darwin-arm64.zip"
      sha256 "9901742077e4fc9e57e0be9c08be9393ba554d9ef91ac4867e11603dbeb0d480"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.50-ocv.3.51/ocv-darwin-x64.zip"
      sha256 "aef863e39f1e767f1070e4b56680847edd9f00782ddd2579ea09d29fb3c67f2b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.50-ocv.3.51/ocv-linux-arm64.tar.gz"
      sha256 "34c247ecc8791a47605a048d0ff2b24f130c0fe90fcb52e6dcc981ee51538c6a"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.50-ocv.3.51/ocv-linux-x64.tar.gz"
      sha256 "07bb07f592160e2564da4a6aca3ae2bdf2613174c11cee891f558e49bc5e16ef"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
