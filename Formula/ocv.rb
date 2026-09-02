class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.18.26-ocv.4.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.26-ocv.4.10/ocv-darwin-arm64.zip"
      sha256 "6cd88e10e5619aecb0090d6f1ea8a353fa9a9a3158e54e0c6a07554d71733b26"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.26-ocv.4.10/ocv-darwin-x64.zip"
      sha256 "a9b1780ca17f1b87958162e32392d6aa932d9445c4e05867421ea0575ddc3589"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.26-ocv.4.10/ocv-linux-arm64.tar.gz"
      sha256 "b45f8808ec3989c8cae24c98535cec7f9574396dff1a823ba38b4362409de63d"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.26-ocv.4.10/ocv-linux-x64.tar.gz"
      sha256 "f6ee7021c4b57400af9d78e11cbecc03e8350c47dec73dfb527b4fefce4ac4ca"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
