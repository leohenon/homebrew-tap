class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.17.15-ocv.4.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.15-ocv.4.7/ocv-darwin-arm64.zip"
      sha256 "eebc6fc788f16c3033650832174e2d173b765e055bb1dd665f75221729967437"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.15-ocv.4.7/ocv-darwin-x64.zip"
      sha256 "5346a7ed9042bc622fbb241699738ca4b22f419d8db8c5b42612b49c8cabbfa4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.15-ocv.4.7/ocv-linux-arm64.tar.gz"
      sha256 "c30e9cf3552918d205a23f7456b2daf3287373dffbc7609efcac7c882fe3976b"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.15-ocv.4.7/ocv-linux-x64.tar.gz"
      sha256 "4ced8ccfc3b2ebc309847c8f5b68bb112be384264ead4739de58879665c02b2c"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
