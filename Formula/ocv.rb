class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode"
  version "1.2.27-vim.2.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode/releases/download/v1.2.27-vim.2.3/ocv-darwin-arm64.zip"
      sha256 "acb84b623d375b96aeaa858e4c4a6d05f5840095518710b00571f73212475f20"
    else
      url "https://github.com/leohenon/opencode/releases/download/v1.2.27-vim.2.3/ocv-darwin-x64.zip"
      sha256 "1f89fe76289234356cf2aa4b84e01037074757beab64dcb3c64f103c58e2cb35"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode/releases/download/v1.2.27-vim.2.3/ocv-linux-arm64.tar.gz"
      sha256 "75e60f8fed6c476cbf5386a14f3690de80b5c4b648f1e6715b13a4d5f2549f9a"
    else
      url "https://github.com/leohenon/opencode/releases/download/v1.2.27-vim.2.3/ocv-linux-x64.tar.gz"
      sha256 "e7f33a074938bf56e1b818dfb13c2310579e08e5f8fdc98f71275913c578b92f"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
