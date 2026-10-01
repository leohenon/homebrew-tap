class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.18.34-ocv.4.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.34-ocv.4.11/ocv-darwin-arm64.zip"
      sha256 "571727dff9337eaf2ae241b85c80ad81784f6d364060113fec463249c43211de"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.34-ocv.4.11/ocv-darwin-x64.zip"
      sha256 "9d1be7700db90ba4649eb8d1d476c0531d83e43d7784ba0bec2a46219ea6c14c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.34-ocv.4.11/ocv-linux-arm64.tar.gz"
      sha256 "fd8f6794bbc5011b797a06473b7fd8d0287f45b5c80d2fe57305164b1d399df8"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.34-ocv.4.11/ocv-linux-x64.tar.gz"
      sha256 "fbd119aef8746e87fa16f5ed6ce1c40808cf1518d8eb117792c31e62fdfc9115"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
