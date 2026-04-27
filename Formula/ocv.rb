class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.14.28-ocv.3.29"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.28-ocv.3.29/ocv-darwin-arm64.zip"
      sha256 "5d961e2730f4e86a4c3445717a0903b1439985e758f1a151495e0be7778175d0"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.28-ocv.3.29/ocv-darwin-x64.zip"
      sha256 "fc453a211b17f83fa841a341ace88d708e982617a4897aa7c871416e647f0328"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.28-ocv.3.29/ocv-linux-arm64.tar.gz"
      sha256 "c4238f4f4448d2155ac5103a1bbacebdd95f5e09965fe3e44f5dd3b1ce90fb1b"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.28-ocv.3.29/ocv-linux-x64.tar.gz"
      sha256 "be0867e3e6528c3ace5e64406d967f6d31aa5c997859ce97f288710d4e9d1d66"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
