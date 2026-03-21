class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode"
  version "1.2.27-vim.2.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode/releases/download/v1.2.27-vim.2.6/ocv-darwin-arm64.zip"
      sha256 "5d6a7e63f92fc70edb34e1b7e8b38c972fb03b25e16d13ddf7136fc3cfb53144"
    else
      url "https://github.com/leohenon/opencode/releases/download/v1.2.27-vim.2.6/ocv-darwin-x64.zip"
      sha256 "0be9ec522488db7b4e5c6dce530b7ba45200055b97a6d9af71ad6671380f39f4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode/releases/download/v1.2.27-vim.2.6/ocv-linux-arm64.tar.gz"
      sha256 "251fec2f369301ebec2e854b8b15d355552fda4ac115281a07412efd7126e41d"
    else
      url "https://github.com/leohenon/opencode/releases/download/v1.2.27-vim.2.6/ocv-linux-x64.tar.gz"
      sha256 "d9661e87a5cb64e50f1181d6eb9c4a36121e08cb73b19fa6ea221e63f040528d"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
