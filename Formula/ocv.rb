class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.17.7-ocv.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.7-ocv.4.1/ocv-darwin-arm64.zip"
      sha256 "7480a567a3ee0d097eab2e40aecfca26016ab9a4e93eb565c25efbfaf0efc7e1"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.7-ocv.4.1/ocv-darwin-x64.zip"
      sha256 "b64a6516dd2c2a4fbde1108ed9e7f5c12e9307a61083c0988893f148c82e81d6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.7-ocv.4.1/ocv-linux-arm64.tar.gz"
      sha256 "8b5aa062f205cf3da536203d2e868d15619b7e170d068cc3b14de7a78db346e5"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.7-ocv.4.1/ocv-linux-x64.tar.gz"
      sha256 "3f664f1ef872ebf275539742dc3b74ca1bb34abccc2a519090a9c523419a1c9f"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
