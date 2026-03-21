class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode"
  version "1.2.27-vim.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode/releases/download/v1.2.27-vim.2.5/ocv-darwin-arm64.zip"
      sha256 "2cce25ce5a48ed30788d81c744f146ac77c7969e3358113dad4d128a8e92c41d"
    else
      url "https://github.com/leohenon/opencode/releases/download/v1.2.27-vim.2.5/ocv-darwin-x64.zip"
      sha256 "191d5e6d575220737e00960176d63c98d82878c7f4f277f752e6fba7644e9b61"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode/releases/download/v1.2.27-vim.2.5/ocv-linux-arm64.tar.gz"
      sha256 "0e9e97b8e7c9d8b7b14533a1d90e744d7cab9081f58915abb1aebd16ae4908d6"
    else
      url "https://github.com/leohenon/opencode/releases/download/v1.2.27-vim.2.5/ocv-linux-x64.tar.gz"
      sha256 "2b868938bc5c58e69957da60557d04dcedc74e45c9096ba4fa4b1e6693a00b91"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
