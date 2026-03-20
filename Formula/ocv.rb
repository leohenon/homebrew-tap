class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode"
  version "1.2.27-vim.2.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode/releases/download/v1.2.27-vim.2.2/ocv-darwin-arm64.zip"
      sha256 "df44275462b0ffb7b8e81a22f51633a6424d77cf20d3073bf3533ddf9e431e65"
    else
      url "https://github.com/leohenon/opencode/releases/download/v1.2.27-vim.2.2/ocv-darwin-x64.zip"
      sha256 "a42c70adde5740eb37cb570c701be15e07d45f6a5190e66f6ef1f9b40563a6e0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode/releases/download/v1.2.27-vim.2.2/ocv-linux-arm64.tar.gz"
      sha256 "e1b52fc142f3b1cf499e6eba19d52e4b9538f1bd9f79d363fa6f8342df3b249b"
    else
      url "https://github.com/leohenon/opencode/releases/download/v1.2.27-vim.2.2/ocv-linux-x64.tar.gz"
      sha256 "7b8689af2ccd2cf77bc932535085c9be15d63063bcfcfa41fb1bcf2a403a2f81"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
