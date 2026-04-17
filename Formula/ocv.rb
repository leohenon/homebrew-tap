class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.4.9-ocv.3.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.9-ocv.3.25/ocv-darwin-arm64.zip"
      sha256 "1dd67da59dabca734adcc7eeecaaefb5b0d0d8d2121c171242f8b27bc50a3020"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.9-ocv.3.25/ocv-darwin-x64.zip"
      sha256 "4198cf3c3efa27ba22bb4ec6d4db108687090ed8c99b7903cfffb67a433ce907"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.9-ocv.3.25/ocv-linux-arm64.tar.gz"
      sha256 "d2f59aa4bf8df61cc4e99f28dca23a0c8ac4d3ec84151752113fe832c67f14d1"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.9-ocv.3.25/ocv-linux-x64.tar.gz"
      sha256 "9551af2efa26934e3dfebaf9e813dc6d9ff141609e832fe16930cb9aa12514ad"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
