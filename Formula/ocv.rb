class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.15.3-ocv.3.52"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.3-ocv.3.52/ocv-darwin-arm64.zip"
      sha256 "ead49934824274f576ab172dc39806af7aaa03da60dfb36f1882f2f9a4fd1902"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.3-ocv.3.52/ocv-darwin-x64.zip"
      sha256 "faac0d024bb260b7c9e85b3946d3c82ee0d15e3e13511844e0e1bf5d41c7a158"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.3-ocv.3.52/ocv-linux-arm64.tar.gz"
      sha256 "9b40b238d7953af6e38fb911b84e6c7db3cdea2b589553c5db1875d91bd33d7e"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.3-ocv.3.52/ocv-linux-x64.tar.gz"
      sha256 "2fe185aad020d981320d620b3d8b21bd9c43983adb542b82f1547c449aea10b1"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
