class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.18.35-ocv.4.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.35-ocv.4.12/ocv-darwin-arm64.zip"
      sha256 "607df5d7246db76e12f614a699e62e0dccd05a193f1731dc16202b5a652292dc"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.35-ocv.4.12/ocv-darwin-x64.zip"
      sha256 "004d5ab88e3d254c69ccceb2727c2ecef1eeffc257912c112d280818ef5a9938"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.35-ocv.4.12/ocv-linux-arm64.tar.gz"
      sha256 "80ba6f5d27fe8e1acb9740288d6d9ad8554d5899641d6df8accd1bc5c9b502ce"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.35-ocv.4.12/ocv-linux-x64.tar.gz"
      sha256 "fc8c18db7c874d757917a3be0a184bf4f03a81251b8b686d665c8d01bc0d0065"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
