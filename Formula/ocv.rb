class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.15.3-ocv.3.51"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.3-ocv.3.51/ocv-darwin-arm64.zip"
      sha256 "1da952dccfd3327a91db8b41f5970e1e363b9c9f2d30df2d4c9a8b09783fec64"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.3-ocv.3.51/ocv-darwin-x64.zip"
      sha256 "09d8eb975fd10e2bce205cb8b5619b23e5b213977664d7b59128ba9780adb398"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.3-ocv.3.51/ocv-linux-arm64.tar.gz"
      sha256 "1a759a7e361e72c530cc27328d5e87130c336b57b8373805364014229d2d24f0"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.3-ocv.3.51/ocv-linux-x64.tar.gz"
      sha256 "279367ae78e2792e7bb98c38a2767ece9a48508fd2a1cd1c1814b7d238e450d4"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
