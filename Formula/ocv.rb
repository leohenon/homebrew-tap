class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.19.6-ocv.4.14"
  license "MIT"
  conflicts_with "ocv-v2", because: "both install the ocv executable"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.19.6-ocv.4.14/ocv-darwin-arm64.zip"
      sha256 "8f857dbb558844da44ca86a032654f32aabecaec0692804e4ab6a53d82b3502b"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.19.6-ocv.4.14/ocv-darwin-x64.zip"
      sha256 "1a57cc94cc9d3688356d6fca6597d6cc72ad8566a7f30c45bfd1b4c12ad5502e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.19.6-ocv.4.14/ocv-linux-arm64.tar.gz"
      sha256 "7164c00ab0cc81690283cd7a0f2811694e9657e10628c5056c474a7fcc2b14e4"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.19.6-ocv.4.14/ocv-linux-x64.tar.gz"
      sha256 "1fab6f14a5ecd51b4a8156e745958a4a17df2b49aef532e84f97008c93299720"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version")
  end
end
