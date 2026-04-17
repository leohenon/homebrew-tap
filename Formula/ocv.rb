class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.4.7-ocv.3.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.7-ocv.3.25/ocv-darwin-arm64.zip"
      sha256 "7378d7b420c1bc7973e3ac93f6edd5f8e415ee3c49f844ec2ca814b6a97d8297"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.7-ocv.3.25/ocv-darwin-x64.zip"
      sha256 "af2911978bfa3e74934eaba334deb20f27af1ecb6818cc8c5c02eaeedb3dc8d2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.7-ocv.3.25/ocv-linux-arm64.tar.gz"
      sha256 "9a86aaf3cacc9bf1079a6385014be1116279d18545cbe6cbcbf98783d8ee073e"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.7-ocv.3.25/ocv-linux-x64.tar.gz"
      sha256 "4f1ae0873bcc56ae4cb29bf0d3f465585e989ac9e28356888beb619a9f9ce4c3"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
