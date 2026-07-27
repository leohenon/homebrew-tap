class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.18.6-ocv.4.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.6-ocv.4.9/ocv-darwin-arm64.zip"
      sha256 "cd8fd8f88cbf6193c15579f2fc2b468b7119a20cfe56cb8b16e4676611b6b795"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.6-ocv.4.9/ocv-darwin-x64.zip"
      sha256 "bbff1a183e8c18e5168eec6cf4fbc7e0e9a03225efd4f179c3ab4a33a190ed6a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.6-ocv.4.9/ocv-linux-arm64.tar.gz"
      sha256 "391f58fdae5ef662726465df0516bfc4234aa0cff68bd988ca0b2677acc49d81"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.6-ocv.4.9/ocv-linux-x64.tar.gz"
      sha256 "ba8b685b3634a02184d31e2a01da436fb79d3fe217bea08f956b30e54c933b9d"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
