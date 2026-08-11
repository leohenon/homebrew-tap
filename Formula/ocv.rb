class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.18.16-ocv.4.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.16-ocv.4.10/ocv-darwin-arm64.zip"
      sha256 "f4f25f6d9395b3064b818292abe4be92bab911923ce7f981d87b4adea60bedb3"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.16-ocv.4.10/ocv-darwin-x64.zip"
      sha256 "cc3ee140cf19c283cae5a5999e884fafccdb8c9be18235627a1c3b62128e232b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.16-ocv.4.10/ocv-linux-arm64.tar.gz"
      sha256 "5cdf08babaf0fca94135df0e646359724dadeef016d2656fbb47799b7120cfdb"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.16-ocv.4.10/ocv-linux-x64.tar.gz"
      sha256 "8f1d32dc32b0d70d952d0ce668be70006c8dc04cc7d3696504dcca9a22110e17"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
