class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.14.41-ocv.3.36"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.41-ocv.3.36/ocv-darwin-arm64.zip"
      sha256 "5d1c363514d461a74263039c9a653a490e3135055a0ac68a7031801fe4956532"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.41-ocv.3.36/ocv-darwin-x64.zip"
      sha256 "cb609d754f85a8e366c739dc78bce85009ac8c6e20166e34f737b28744574d8c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.41-ocv.3.36/ocv-linux-arm64.tar.gz"
      sha256 "cdfaa1ae9d5dd32789125c9a30fd0f7a25e3c5c3b5878ff1d1bf395b082c9759"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.41-ocv.3.36/ocv-linux-x64.tar.gz"
      sha256 "ad7a95a2b425e1a83ee250ce091bb053894c4303455b8e254426efd7d4548d47"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
