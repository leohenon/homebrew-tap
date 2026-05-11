class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.14.48-ocv.3.47"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.48-ocv.3.47/ocv-darwin-arm64.zip"
      sha256 "ac1aa88ff7ea0c0177cd55b3709b38aa4ed4984aad303000b6b9dfc64915662f"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.48-ocv.3.47/ocv-darwin-x64.zip"
      sha256 "5f83882cdf509fe8cce2f600df1e258b03835bbd30eee9f5b26dd6c386cd9fe4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.48-ocv.3.47/ocv-linux-arm64.tar.gz"
      sha256 "0afb073cbb5bed43cfd9885b69881786173422bff4c12c94bcc2ee7aed0ccdf6"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.48-ocv.3.47/ocv-linux-x64.tar.gz"
      sha256 "73d17c50b9a088bcc720a9e38fa58329ba01700b8fc7f43a48b464b4720c2ea3"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
