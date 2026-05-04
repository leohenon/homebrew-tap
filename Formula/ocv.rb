class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.14.34-ocv.3.33"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.34-ocv.3.33/ocv-darwin-arm64.zip"
      sha256 "c797c05fd9f519d08ca8ff093b7f34d6a98a41aa0c0d73b7286dc2bbfd890764"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.34-ocv.3.33/ocv-darwin-x64.zip"
      sha256 "d06d6d05df5bda61cbc021b18b213c339dc2a17626f570a6956582e787deffbc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.34-ocv.3.33/ocv-linux-arm64.tar.gz"
      sha256 "cfa10fee40650b20c8cddf431770888c42e8abc5307d6330234843003e6a9fa3"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.34-ocv.3.33/ocv-linux-x64.tar.gz"
      sha256 "9c5b253d64d8f9409e13fc63f24029764160c1fbef27d1e493dcab7f530bca5a"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
