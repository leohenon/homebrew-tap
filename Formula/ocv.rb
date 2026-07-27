class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.18.7-ocv.4.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.7-ocv.4.10/ocv-darwin-arm64.zip"
      sha256 "dbe402b87a1731677ab4dee649813eb9cdc6285f096cc00f578e5e062067eaff"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.7-ocv.4.10/ocv-darwin-x64.zip"
      sha256 "48c2b2570e7638ccf7856cbcbe04007de918511cc766d11fd9427f9c43b30260"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.7-ocv.4.10/ocv-linux-arm64.tar.gz"
      sha256 "22e0adf39211eae76302f8a79cdaf152262c0d2ba4c4502d23c8533c1aeef2f7"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.7-ocv.4.10/ocv-linux-x64.tar.gz"
      sha256 "cc2a6196a713efbd333626652868198b6021b4b1f8dc0ca303234ec2bb1c0f24"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
