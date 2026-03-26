class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode"
  version "1.3.2-ocv.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode/releases/download/v1.3.2-ocv.3.0/ocv-darwin-arm64.zip"
      sha256 "bc648def05d5cacd0f42464b49919c36a8827849ea47a9ea33842e8d6728c47d"
    else
      url "https://github.com/leohenon/opencode/releases/download/v1.3.2-ocv.3.0/ocv-darwin-x64.zip"
      sha256 "a30190a4bf75000df10c7850f8db6a1ee19b6de7bd033f28da0d744e5fc5a726"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode/releases/download/v1.3.2-ocv.3.0/ocv-linux-arm64.tar.gz"
      sha256 "b25d793330d698a414c082d372540f253b71fd9ceb4c10c0dd85ac98f7daefa1"
    else
      url "https://github.com/leohenon/opencode/releases/download/v1.3.2-ocv.3.0/ocv-linux-x64.tar.gz"
      sha256 "f79b3817edeef398853c70fdac08bd74c1eb923351de4c6f5758f53f64077fb0"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
