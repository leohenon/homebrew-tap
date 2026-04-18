class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.4.10-ocv.3.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.10-ocv.3.25/ocv-darwin-arm64.zip"
      sha256 "a8061a6c3fee21a77fae7b250ea34d13dd7c93de565de2a9ea61631d1a406dce"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.10-ocv.3.25/ocv-darwin-x64.zip"
      sha256 "867a6474fe972fc17a02dedf6999e80ad6e8802129f096ab372ef02091ba4e63"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.10-ocv.3.25/ocv-linux-arm64.tar.gz"
      sha256 "ba630ae9750863bf49b06f3bafdabc9cc176870b5f4519cbe37c8798674166f5"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.10-ocv.3.25/ocv-linux-x64.tar.gz"
      sha256 "5fc1e135fb809ddd0535aeccdddf14f027ae34b8ffe6eb219a0e69c3c2758531"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
