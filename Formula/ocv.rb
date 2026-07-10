class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.17.18-ocv.4.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.18-ocv.4.7/ocv-darwin-arm64.zip"
      sha256 "6cf8768dcac6a1224f7a7c84d27c54236e423703d38d9eba97ddbdc7258db0b4"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.18-ocv.4.7/ocv-darwin-x64.zip"
      sha256 "788338447938a5464685311fc3c176ee19d4dd78947d56422203804eb86e4b50"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.18-ocv.4.7/ocv-linux-arm64.tar.gz"
      sha256 "fbb170a516aa5bbf9e8560a4ce7395f08d57c5a9e325e055a4fe8b1b471a2a7c"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.18-ocv.4.7/ocv-linux-x64.tar.gz"
      sha256 "800db0e1f04e43f22692974b5552755842bca0085522edf4d2ef7c1df9825e52"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
