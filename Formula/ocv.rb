class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.18.33-ocv.4.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.33-ocv.4.11/ocv-darwin-arm64.zip"
      sha256 "c88d4ed582d730161d710882c5549d45c2f3ba289d114feed1b33b8d2ebee9b1"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.33-ocv.4.11/ocv-darwin-x64.zip"
      sha256 "26036a71fd7142d456b4f3dce1f65ee4161c04e2fc6118864274f2d1c795cf77"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.33-ocv.4.11/ocv-linux-arm64.tar.gz"
      sha256 "48b4792359080e4df93fbc578483ded6880d15354a072ad0aa056be4b952230c"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.33-ocv.4.11/ocv-linux-x64.tar.gz"
      sha256 "da0ec2c89fa40ad68b0b9291bcd8075c2a1c0450bc11fcefa44c652d594e29da"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
