class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode"
  version "1.2.27-vim.2.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode/releases/download/v1.2.27-vim.2.5/ocv-darwin-arm64.zip"
      sha256 "b36283ee6b265843c3c73d89f06e4a630b23194e1080370eb23f22acd46d8e5c"
    else
      url "https://github.com/leohenon/opencode/releases/download/v1.2.27-vim.2.5/ocv-darwin-x64.zip"
      sha256 "5d4c34382087d686da26e917fd3ecff777f91c07c0c85d73f56926d02d399333"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode/releases/download/v1.2.27-vim.2.5/ocv-linux-arm64.tar.gz"
      sha256 "e1fa823fc90d2d5d46506bfd48ae96f7759960e0f9d06be0bc85df12f953bb5f"
    else
      url "https://github.com/leohenon/opencode/releases/download/v1.2.27-vim.2.5/ocv-linux-x64.tar.gz"
      sha256 "094e37595efd60931423fbb6f137a6d2974f8ed3a78b25e51676e1640f1c4110"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
