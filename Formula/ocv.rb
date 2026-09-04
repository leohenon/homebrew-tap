class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.18.28-ocv.4.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.28-ocv.4.10/ocv-darwin-arm64.zip"
      sha256 "6bf3b76f3249e0cba4b348bd91a630e2d9cf4fe15d840bb3abaeb477746d3bf1"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.28-ocv.4.10/ocv-darwin-x64.zip"
      sha256 "e12fd69dce45baa07a6b5f80a3e1756ac4b4197a0e58284e8f8ae75063338900"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.28-ocv.4.10/ocv-linux-arm64.tar.gz"
      sha256 "6eab39ce5a4ab6b9ce5157b92b6345cb82a327c1c4504a40dc59984b44b7dcfa"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.28-ocv.4.10/ocv-linux-x64.tar.gz"
      sha256 "accc9492000282cfe8cd137210035fbb506fa8a3704d523010429b3882e4e661"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
