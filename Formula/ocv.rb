class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.18.31-ocv.4.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.31-ocv.4.10/ocv-darwin-arm64.zip"
      sha256 "e266a7d50615186d9379dbfe656dccc235a9fa488b0c1b5db5a6f69632305d55"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.31-ocv.4.10/ocv-darwin-x64.zip"
      sha256 "7967e805110b4c2c26640c025dd03e6b584abccbc4d783e43701e2fce861b5eb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.31-ocv.4.10/ocv-linux-arm64.tar.gz"
      sha256 "2e6871160fc692a48fe939321b03fbc96be9ce209e4f6d34038b95a1791becc9"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.31-ocv.4.10/ocv-linux-x64.tar.gz"
      sha256 "b30afc1b555f373bb755f12bf4edb7959c140ce6a06f24fbfab976a168ff7db0"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
