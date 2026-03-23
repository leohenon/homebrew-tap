class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode"
  version "1.3.0-ocv.2.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode/releases/download/v1.3.0-ocv.2.7/ocv-darwin-arm64.zip"
      sha256 "c24258f53929fbb62663253c127e1cf742673793b76e1362eba9f86d6bcdf61b"
    else
      url "https://github.com/leohenon/opencode/releases/download/v1.3.0-ocv.2.7/ocv-darwin-x64.zip"
      sha256 "894850fff97dd3527f0dc32ff301d3a2d91dcc6d44f37422abb58d607ee61040"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode/releases/download/v1.3.0-ocv.2.7/ocv-linux-arm64.tar.gz"
      sha256 "4fee3843784b9b236a713126c8e32ac61ea11a2827dd272c661bc7d3f2dbbb1a"
    else
      url "https://github.com/leohenon/opencode/releases/download/v1.3.0-ocv.2.7/ocv-linux-x64.tar.gz"
      sha256 "3537abd1357d24cea6d90f74c63168543ccfb85d8a464e487f1b5376e29a6eca"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
