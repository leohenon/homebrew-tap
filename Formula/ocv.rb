class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.18.5-ocv.4.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.5-ocv.4.9/ocv-darwin-arm64.zip"
      sha256 "d5eaaece4648c07da1144190abe2375ce6087a2db9ff004d2c6ab86a5e684555"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.5-ocv.4.9/ocv-darwin-x64.zip"
      sha256 "6816a29e6de6234739ec77f9d89eb6f844e3ac41cdce4440b6e5c30c279228a5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.5-ocv.4.9/ocv-linux-arm64.tar.gz"
      sha256 "cc97b3af83a5112d467ce05b06c8ea6320cb93891e5a441cd5fd80b03feb6ac1"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.5-ocv.4.9/ocv-linux-x64.tar.gz"
      sha256 "adb76a5a52b96a52282094f8db3204b9cc4e9caee9d02d3814bf61ada4454a48"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
