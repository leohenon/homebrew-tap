class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.4.11-ocv.3.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.11-ocv.3.25/ocv-darwin-arm64.zip"
      sha256 "27c7b197436ca13a0a467d7586fedb68759f770b70222fca5770ea3294e4435c"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.11-ocv.3.25/ocv-darwin-x64.zip"
      sha256 "4fd1d869a9563632875647b34d4085f31f1e8134a19c7f211f243fc112816eed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.11-ocv.3.25/ocv-linux-arm64.tar.gz"
      sha256 "9364995cc98e8f865e5c64aea363ff180dc4610680232e19f4464f4d156e1d6c"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.11-ocv.3.25/ocv-linux-x64.tar.gz"
      sha256 "a0264ab7d06badd9b328496bf15a4ba3101fd2701c1979f19ef076d3b5ee4fa2"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
