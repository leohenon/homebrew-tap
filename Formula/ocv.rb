class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.18.1-ocv.4.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.1-ocv.4.8/ocv-darwin-arm64.zip"
      sha256 "0d65c4da534a65ae75097b9f46231c40b523c57e9a39aae6a3fc000a8d679949"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.1-ocv.4.8/ocv-darwin-x64.zip"
      sha256 "0b45a9c7af126b50e679a7a92a25b4800fa622fe29282c891b8a4e43dc56917e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.1-ocv.4.8/ocv-linux-arm64.tar.gz"
      sha256 "b10a055e33a18c27403b6277d40c07fc2367cd42c779a0d344e606fb029d613b"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.1-ocv.4.8/ocv-linux-x64.tar.gz"
      sha256 "03d4e83025e31cb3f5d1a26d08b765430257a1e02288a65b9ae87eeca34370d8"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
