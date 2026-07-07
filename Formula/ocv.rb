class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.17.15-ocv.4.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.15-ocv.4.6/ocv-darwin-arm64.zip"
      sha256 "7994bedee1dded354389d512c54b9caba2a6e0c3f024911d6432675175f2df65"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.15-ocv.4.6/ocv-darwin-x64.zip"
      sha256 "3b87e3389285aa6f37c6e62c888a0c0adbc3308dd61efcedd94dbf88b2c83003"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.15-ocv.4.6/ocv-linux-arm64.tar.gz"
      sha256 "7b50be85617b09ca7e799b44ff0ef015bd15078cca32d2666a22d2e52a3132b1"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.15-ocv.4.6/ocv-linux-x64.tar.gz"
      sha256 "beae7398a71bc305ee45a233196a83a7a66ba7fbf1a46aee1ee5b3d580519328"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
