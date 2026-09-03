class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.18.27-ocv.4.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.27-ocv.4.10/ocv-darwin-arm64.zip"
      sha256 "f1eb7b12d6f83147074d913c8ce3423854800e5bb91f6ec30f03842ad430ecf8"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.27-ocv.4.10/ocv-darwin-x64.zip"
      sha256 "6f308005c27177ff61026f94847f2aeac0c98c389548b7cb2906dc990042b635"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.27-ocv.4.10/ocv-linux-arm64.tar.gz"
      sha256 "c786f8dc33c4dc56e4a8a0718d11e0e620b08a190b96ea56a27f7f18e21d0bf2"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.27-ocv.4.10/ocv-linux-x64.tar.gz"
      sha256 "b4b21a320cbf395e60c039c37ed49c3fc7eb657be59fd180a27b39de27584616"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
