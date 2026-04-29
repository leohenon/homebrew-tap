class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.14.29-ocv.3.30"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.29-ocv.3.30/ocv-darwin-arm64.zip"
      sha256 "cafa90d695566c9a5947b9dcc9ec526edd5eaa2e50e91ecd77bb799bf00ff4b7"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.29-ocv.3.30/ocv-darwin-x64.zip"
      sha256 "610b6da085b7cbe5f87e602ddf730b0f18dd86eb23e7da207ee3ee9f37e69f29"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.29-ocv.3.30/ocv-linux-arm64.tar.gz"
      sha256 "7161ca374e03993bcaf0849c9c2c804ae5b4651a76718545b25a8bac896d8e58"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.29-ocv.3.30/ocv-linux-x64.tar.gz"
      sha256 "1e190cb7bf737ddabf1dc793f58347465afd5d3c99d27edc077b138d1df1eac4"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
