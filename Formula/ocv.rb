class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.14.48-ocv.3.49"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.48-ocv.3.49/ocv-darwin-arm64.zip"
      sha256 "9226f77081f982398a5a8d813c35f62e8475701a0cb1d0e16aa79a834098ced6"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.48-ocv.3.49/ocv-darwin-x64.zip"
      sha256 "8b8fa0a7ac47c869e72845bc69827116b8556616bf76c824e4c6c8aadabc6613"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.48-ocv.3.49/ocv-linux-arm64.tar.gz"
      sha256 "6f888f2a7ec01ef15990917efb5f5549099c79f1c1b8b0a5ba2bc37ce952665f"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.48-ocv.3.49/ocv-linux-x64.tar.gz"
      sha256 "48e401794431d496cbab3737cda932120bcf4dd6cf3d8f1023af8f1335068aad"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
