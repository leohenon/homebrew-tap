class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.14.22-ocv.3.28"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.22-ocv.3.28/ocv-darwin-arm64.zip"
      sha256 "41a92699e41408eb4e71713e7947e1277a8dfd302c1daefa03c2bdbcc1e5ae30"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.22-ocv.3.28/ocv-darwin-x64.zip"
      sha256 "c44b5b09ba8f8f3a666e8c3b25c6f47f8caa729d5d95931d96d59046a4ad4dab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.22-ocv.3.28/ocv-linux-arm64.tar.gz"
      sha256 "b24a4d890b8d2e1843e6aa4cbf1a8a62318a57577d865da1d6d5ffb5bed52444"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.22-ocv.3.28/ocv-linux-x64.tar.gz"
      sha256 "cdfbc28f9ebe41618dafb567577d77d757653dfd30d6d55c79492ca536f61a9f"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
