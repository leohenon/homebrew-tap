class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.14.19-ocv.3.26"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.19-ocv.3.26/ocv-darwin-arm64.zip"
      sha256 "dc42cde3506f9b040639ac76b237fb58ee83d1c22005372a64c35292e4f0410c"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.19-ocv.3.26/ocv-darwin-x64.zip"
      sha256 "246eec94b63e450d059df73d11050384c660431b7185028aea10b3a90e0f54b1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.19-ocv.3.26/ocv-linux-arm64.tar.gz"
      sha256 "2ea281678c1e10498550d108026326c1fea8a5cf007fccdc5a998abcacbcae53"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.19-ocv.3.26/ocv-linux-x64.tar.gz"
      sha256 "f71153715e50d3ee0ecc7b23122891d182cadfcca90c174994f89f888f0445a2"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
