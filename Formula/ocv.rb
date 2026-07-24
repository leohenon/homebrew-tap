class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.18.4-ocv.4.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.4-ocv.4.9/ocv-darwin-arm64.zip"
      sha256 "e693e2f3f894c9e37e8f57469e7f3b847023380b70fba186fc2f51b34f17445e"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.4-ocv.4.9/ocv-darwin-x64.zip"
      sha256 "efff8fd24ebd42e2d9275d5ebd8f5e034ee9a2b77d06e6d9ffc21d6865f341df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.4-ocv.4.9/ocv-linux-arm64.tar.gz"
      sha256 "aa26a74065a0d3b005e414c2c5a7ff0026b566b3d5fa3d03eb11c5f626befb1f"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.4-ocv.4.9/ocv-linux-x64.tar.gz"
      sha256 "3a04f6de059176cadba5616b3f76597c821bc2f515d61235a2842c77b60c92c8"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
