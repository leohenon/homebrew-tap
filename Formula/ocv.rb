class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode"
  version "1.3.13-ocv.3.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode/releases/download/v1.3.13-ocv.3.2/ocv-darwin-arm64.zip"
      sha256 "e5d5a25e24151ef7f8e15a956de8e919ddce9902cf3ec1a6df7f54040422ffe3"
    else
      url "https://github.com/leohenon/opencode/releases/download/v1.3.13-ocv.3.2/ocv-darwin-x64.zip"
      sha256 "aecd6212fdd294a2215b007658c204ec9ef5f570827ee7d67dad666b5d7fc398"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode/releases/download/v1.3.13-ocv.3.2/ocv-linux-arm64.tar.gz"
      sha256 "2c327214b5114aafaf8d33d65ae1f9354de2b988be2f381afd153a3a0763d032"
    else
      url "https://github.com/leohenon/opencode/releases/download/v1.3.13-ocv.3.2/ocv-linux-x64.tar.gz"
      sha256 "cc9fc68a36bf560f13cc6804cc084632b31cbb64fe61b7cca5e3c47e221a1d61"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
