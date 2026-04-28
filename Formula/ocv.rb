class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.14.28-ocv.3.30"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.28-ocv.3.30/ocv-darwin-arm64.zip"
      sha256 "dff1207d6beece4d6ec279b258ab2020a991cb6b3d33ddadc60924bb2f5ed6cd"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.28-ocv.3.30/ocv-darwin-x64.zip"
      sha256 "b513f055bf347c103f1af309f5e009d8c099479234b3ff1c07ffe5a0d81f2ba5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.28-ocv.3.30/ocv-linux-arm64.tar.gz"
      sha256 "10413e8a0889bc16780376c891dd75eab12e2807bff48148b9e0f11f1c169db8"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.28-ocv.3.30/ocv-linux-x64.tar.gz"
      sha256 "721438bacf77c5f672898322c3cafe251d4817b5638a578cd4c8c89ac04d66a6"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
