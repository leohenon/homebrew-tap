class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.17.4-ocv.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.4-ocv.4.0/ocv-darwin-arm64.zip"
      sha256 "a7cd39b4487403ecadc005cebb6925b61d0d765dfc8d6d4413420e6ab5b7da8d"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.4-ocv.4.0/ocv-darwin-x64.zip"
      sha256 "13b8cf990354b11a2a70fc054c19ccd9794da16034403c8e569253698b79c95d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.4-ocv.4.0/ocv-linux-arm64.tar.gz"
      sha256 "7c93a252e6671d7c341bab188a3063c3e4d4388f73c4f0c0b410f9b256308ba5"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.4-ocv.4.0/ocv-linux-x64.tar.gz"
      sha256 "d36abf60d3e6cb6593bfc3485962b7780b31bb0494e9b092435307de1a900a2b"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
