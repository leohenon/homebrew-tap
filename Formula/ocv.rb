class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.4.0-ocv.3.21"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.0-ocv.3.21/ocv-darwin-arm64.zip"
      sha256 "3a4608851dbd017845a1a8b8d8ccdde49a32870fb1b55ec43e7ea39f0275dc41"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.0-ocv.3.21/ocv-darwin-x64.zip"
      sha256 "f3ac5ee4308945455a89b3ef6aac98cea2382cedd502108f6a123ef2849bd498"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.0-ocv.3.21/ocv-linux-arm64.tar.gz"
      sha256 "d61371adc578d8286d9d355f359fd1ac661a09ed7e778441f84db606966f386c"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.0-ocv.3.21/ocv-linux-x64.tar.gz"
      sha256 "a91179b16de4da1e418189086d79ca3b85b4c64b4a0951c6880fb66545703829"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
