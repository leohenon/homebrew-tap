class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.4.0-ocv.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.0-ocv.3.2/ocv-darwin-arm64.zip"
      sha256 "90fe90e8074631721d7c2dec94e120412580a86b63fea00b7abd323c84405114"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.0-ocv.3.2/ocv-darwin-x64.zip"
      sha256 "10e7d8d58b579972bd7ddb9dbc5e9c6ed22597ad42e9baea8655b1be2c105dcc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.0-ocv.3.2/ocv-linux-arm64.tar.gz"
      sha256 "66d2de48f2704357f5ca29f90936cfdcbad85b7f0e220c8b4ea5eabd7caa0548"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.0-ocv.3.2/ocv-linux-x64.tar.gz"
      sha256 "360fb475c1fd5ac667b142fe053e566c88506f0a922beb5f69a8f279972695e5"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
