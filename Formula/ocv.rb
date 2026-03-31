class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode"
  version "1.3.9-ocv.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode/releases/download/v1.3.9-ocv.3.0/ocv-darwin-arm64.zip"
      sha256 "7edcf2151fbc209326969194b75a357e38c5cf9c0b3ef033fd13a063567a14bd"
    else
      url "https://github.com/leohenon/opencode/releases/download/v1.3.9-ocv.3.0/ocv-darwin-x64.zip"
      sha256 "ec8b855239f489596f250195b11ecd1512d3cd18252e88fade00f0a97eb18637"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode/releases/download/v1.3.9-ocv.3.0/ocv-linux-arm64.tar.gz"
      sha256 "80f814716e56041b824088581111fa46e266a6be21bcd6f3f1c5f1162a03524b"
    else
      url "https://github.com/leohenon/opencode/releases/download/v1.3.9-ocv.3.0/ocv-linux-x64.tar.gz"
      sha256 "a761957c9aeba3690a0d2d21a00c823c1dceb3986bdf7827a9e55afb27968c94"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
