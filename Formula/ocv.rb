class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.15.10-ocv.3.64"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.10-ocv.3.64/ocv-darwin-arm64.zip"
      sha256 "0bd53fccaa4230e7aab767071e683df1d2abed128931c81c14d5e76600d3405a"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.10-ocv.3.64/ocv-darwin-x64.zip"
      sha256 "03427b3e4e6a537d1723c340bc93122928d4cc60def8f75bf912249a8826612a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.10-ocv.3.64/ocv-linux-arm64.tar.gz"
      sha256 "5083cf420138bd2029ca7f6b6f678834525bab977488ab401a8bfc2445677f7b"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.10-ocv.3.64/ocv-linux-x64.tar.gz"
      sha256 "8930ad191b550bae96112fa4d73b53a6661be978aa2a19d76a6dc22b38c088f2"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
