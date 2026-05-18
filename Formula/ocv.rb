class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.15.4-ocv.3.60"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.4-ocv.3.60/ocv-darwin-arm64.zip"
      sha256 "91fd13a214e6845e70bc17af66966e1d76708e2baee3f24efaf5f7a0b5654b8f"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.4-ocv.3.60/ocv-darwin-x64.zip"
      sha256 "e0172038dc67db4d34e4c7298108907652130c47a7858b5cdbeb211e13cc3aea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.4-ocv.3.60/ocv-linux-arm64.tar.gz"
      sha256 "4fd42729da6dc8907005bc413e3ab8514d828dbd5afacbe67351ac12f41202cf"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.4-ocv.3.60/ocv-linux-x64.tar.gz"
      sha256 "b380b8673d4d1b0e95c7d05de08a17ddf0f388d2534f97d57f72010dac96c051"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
