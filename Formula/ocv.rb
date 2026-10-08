class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.18.35-ocv.4.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.35-ocv.4.13/ocv-darwin-arm64.zip"
      sha256 "2a2373958c1b8180af6a2d4e0054d17e724c8354220d2dc2b6378faae4aa310e"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.35-ocv.4.13/ocv-darwin-x64.zip"
      sha256 "6aa6d008addf3eb7a963e7643698d958947dc87dc295904b935db0dc0583fd38"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.35-ocv.4.13/ocv-linux-arm64.tar.gz"
      sha256 "bb58a6764f85648556296501d8a5831b56fb43e5ff859d2926661e0c1622e36e"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.35-ocv.4.13/ocv-linux-x64.tar.gz"
      sha256 "408bb586dc5b515ff65675b24e517a4cd358d4fb9f2dff688c1c899a0360e952"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
