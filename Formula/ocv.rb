class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.15.12-ocv.3.68"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.12-ocv.3.68/ocv-darwin-arm64.zip"
      sha256 "d16a92574783ea5670bbc9f0592fe4c8c9df8c0d2d3bca23c0d2babbb23f903c"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.12-ocv.3.68/ocv-darwin-x64.zip"
      sha256 "63ec8bc9204900f8f5ca5502e3fd1425144bcab85ffe75625d3860e1fd3ea4dc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.12-ocv.3.68/ocv-linux-arm64.tar.gz"
      sha256 "90d9b23cc9736a366188f6d0d6ce22e71188a53309b0fdda7a2ad23c6b40fa07"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.12-ocv.3.68/ocv-linux-x64.tar.gz"
      sha256 "698dd3853b39970ec7801547e5be966d8435b82968b1a4f0e8777910a46c0572"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
