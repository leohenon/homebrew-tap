class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.15.12-ocv.3.66"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.12-ocv.3.66/ocv-darwin-arm64.zip"
      sha256 "8492839a510316b3e05f2390acfb5229cb2b6ce4ea875a294b4a962c8aedeb1e"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.12-ocv.3.66/ocv-darwin-x64.zip"
      sha256 "d958fa4151e5763982947aaac3071b17d7981ae1f006aaf190fe02f3a1ba7fbc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.12-ocv.3.66/ocv-linux-arm64.tar.gz"
      sha256 "4979f4aca628d5f0d48961901a9d2e9f5809bf867cab3fc0cf4eae01727c8e90"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.12-ocv.3.66/ocv-linux-x64.tar.gz"
      sha256 "4e3b05705ef596012f6bc3e0dbe4dd247754528d6d046f26eeea1132eefb80f2"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
