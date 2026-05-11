class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.14.48-ocv.3.48"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.48-ocv.3.48/ocv-darwin-arm64.zip"
      sha256 "ac235010a27b80d471af3289899c4281b1b4c458913b304b05df4e397fd437d6"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.48-ocv.3.48/ocv-darwin-x64.zip"
      sha256 "9cbcca0f9b181371d9e08816641a7ff7e87f825638a382b5adcc21bf28d50808"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.48-ocv.3.48/ocv-linux-arm64.tar.gz"
      sha256 "837d36ce7b7d1110a665ae0faa33b2b6c092cf17630dfac29161e71017e3ce41"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.48-ocv.3.48/ocv-linux-x64.tar.gz"
      sha256 "8005aadf466bb31d9c2730e36b25414075a4b7352104cdd1c4c4402c76f4750b"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
