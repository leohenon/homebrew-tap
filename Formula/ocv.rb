class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.18.3-ocv.4.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.3-ocv.4.8/ocv-darwin-arm64.zip"
      sha256 "34f2b0e4feda3113882f9ae3a9a9c88f87a46595ea28270d0c142344f23b33c1"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.3-ocv.4.8/ocv-darwin-x64.zip"
      sha256 "b794651e8dcbac8621b482558cd1d98b28824d7958d6f4bfc87bc4c2141ad0fc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.3-ocv.4.8/ocv-linux-arm64.tar.gz"
      sha256 "8c4c263d62692860cbe5c1fcea5f153cca5473a55712a9e03d1f01c46b56532f"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.3-ocv.4.8/ocv-linux-x64.tar.gz"
      sha256 "b47f39bee203bf8e1e042b45b2c8b3a919525eea84e917cba7c282cf7cce0aae"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
