class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.14.48-ocv.3.37"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.48-ocv.3.37/ocv-darwin-arm64.zip"
      sha256 "ae366e92715b5321f9ed7c316ccefb724e27e7d0e6756a2c19d6b6fa4169fc64"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.48-ocv.3.37/ocv-darwin-x64.zip"
      sha256 "fb68e57e92c59442ecd19ce168a0ea283a40028b81d289e8275752433081080b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.48-ocv.3.37/ocv-linux-arm64.tar.gz"
      sha256 "d30aa85d7eee8982602d0ae0832107797bb1b82fbf00085bbe642049b2cecb84"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.48-ocv.3.37/ocv-linux-x64.tar.gz"
      sha256 "0365dd82f4b07024b0e932d8f859a382003ee56dcb83815c7af99289bd0e964e"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
