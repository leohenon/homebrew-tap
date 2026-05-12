class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.14.48-ocv.3.50"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.48-ocv.3.50/ocv-darwin-arm64.zip"
      sha256 "1e3b31ea43bfcd83c344acd06772bc81d4a7b5fb3446986ff79210ec9749666f"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.48-ocv.3.50/ocv-darwin-x64.zip"
      sha256 "00848cbccd7532a10d4e79ec6bfb8b8a9b7b78a8263c8ecd1fa244d2110b1c0f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.48-ocv.3.50/ocv-linux-arm64.tar.gz"
      sha256 "2f5ac34ff589056e80bf12e83f2e7fd8051cf362045a1af43e4ac012b2bb3928"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.48-ocv.3.50/ocv-linux-x64.tar.gz"
      sha256 "15669e931dc3f5c759eeae6fa6038719d9510cbd81c1a0725b783887f0467216"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
