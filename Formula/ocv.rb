class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.17.18-ocv.4.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.18-ocv.4.8/ocv-darwin-arm64.zip"
      sha256 "4ae35c764e8b24250c3c97d411b7bc7cb84d8ad822f62e8650b1a68675e7009d"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.18-ocv.4.8/ocv-darwin-x64.zip"
      sha256 "8ab51c4fbc51900834afc3e20a8aa2a32fd98af5b9f0d9fbc04d7b5b0139df9d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.18-ocv.4.8/ocv-linux-arm64.tar.gz"
      sha256 "c1859a1d7fbbcbbe3dbe7468a4286e90ef1645db99c9b193beabfaea09bdbbfc"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.18-ocv.4.8/ocv-linux-x64.tar.gz"
      sha256 "24c79ccf84c421beb5ff13610e8d3de4034b8b4069c7b0ce50d98c16d5a81740"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
