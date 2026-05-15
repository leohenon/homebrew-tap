class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.15.0-ocv.3.51"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.0-ocv.3.51/ocv-darwin-arm64.zip"
      sha256 "815e81082dc73aae78fdb1271b8ff16e9c463b94fd7bc0dcc0a5f7346d017099"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.0-ocv.3.51/ocv-darwin-x64.zip"
      sha256 "ddee8aab6c4461e0c0435f922040efc34fb2d5a4f93c8513324a715dcec30d2b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.0-ocv.3.51/ocv-linux-arm64.tar.gz"
      sha256 "d9b32f98f8af5654d3d7e7d29b029e6acfaccb0d3a36d15bb07f6430fff85731"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.0-ocv.3.51/ocv-linux-x64.tar.gz"
      sha256 "271cb7b7e5c7c43fc3f533142480421280f98557be43da761f55b0d09762ee0c"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
