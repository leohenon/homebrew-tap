class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.17.11-ocv.4.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.11-ocv.4.3/ocv-darwin-arm64.zip"
      sha256 "1941c2006a948dd600de61739c6eed1ec45ea4925a49dbaf9c85efd85af2733a"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.11-ocv.4.3/ocv-darwin-x64.zip"
      sha256 "0315a64b3833f5a661465c8db8374282b031aa1a2052f11f6ac6362966daf0a9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.11-ocv.4.3/ocv-linux-arm64.tar.gz"
      sha256 "021c091cd04b8617cf9e3f2f2032a601e6bd75928f29bca6f7092ce969fdb057"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.11-ocv.4.3/ocv-linux-x64.tar.gz"
      sha256 "a049a7cdc9cb06672b3e0e6153376d985e4a0a9d823d42929da46c282013219b"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
