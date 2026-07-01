class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.17.13-ocv.4.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.13-ocv.4.5/ocv-darwin-arm64.zip"
      sha256 "50979e2d5f80532f872cc69301f258be59b55c10582c6dfa2eab49292b3c10ba"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.13-ocv.4.5/ocv-darwin-x64.zip"
      sha256 "714c239040cb8bb55fb9aee1e9d9361091e0407cf29d54f66594929d74d62a8e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.13-ocv.4.5/ocv-linux-arm64.tar.gz"
      sha256 "1edaad661e1753430a4b7929eb7669dbd88466b5e6b8260816469bb613c9aa5a"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.13-ocv.4.5/ocv-linux-x64.tar.gz"
      sha256 "9e2e7bbf8eadc8a3597dd353a0e23dbb5556e2fd77b69199b21a176c4091559d"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
