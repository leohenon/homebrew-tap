class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.14.25-ocv.3.28"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.25-ocv.3.28/ocv-darwin-arm64.zip"
      sha256 "b447a7f97ed0ceee55060cdab28edde94c32d0464217b9055cacf415c0485cf9"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.25-ocv.3.28/ocv-darwin-x64.zip"
      sha256 "4eaf3e1f5b34d2f034a5acaf85207f1e8aee5bd67bf8f6527842d090cbd8c5ed"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.25-ocv.3.28/ocv-linux-arm64.tar.gz"
      sha256 "caeccd131cb52504c01e20035af965eb5625cd08750b1f77c9282fc8c20b41d5"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.25-ocv.3.28/ocv-linux-x64.tar.gz"
      sha256 "37ef7a6ca37521f98d1a5b15f7c15bcb7b3c22095b57e7bfd08ec3555e77f88f"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
