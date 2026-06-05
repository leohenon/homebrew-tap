class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.16.0-ocv.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.16.0-ocv.4.0/ocv-darwin-arm64.zip"
      sha256 "290d856731854f4c4025641143cb808aace75e4875840a6a630b7a2346ec2255"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.16.0-ocv.4.0/ocv-darwin-x64.zip"
      sha256 "3604b694737c033f27a474a6903a3e1a9518a1f95385dc3cea5af677ab148e2c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.16.0-ocv.4.0/ocv-linux-arm64.tar.gz"
      sha256 "028716aaa2be5d8289c961bb1493cddbfcafa60fe557a9421d17aa6b9e999331"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.16.0-ocv.4.0/ocv-linux-x64.tar.gz"
      sha256 "6c432ae0dc94ee583da7ea671684937698c3e39f574f3f2a60f8c2f416e1a9ff"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
