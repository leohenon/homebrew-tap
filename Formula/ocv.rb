class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.18.2-ocv.4.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.2-ocv.4.8/ocv-darwin-arm64.zip"
      sha256 "383de3ef8ee3659ceff524edb2be891f0dfede8ae56062eb1bfb6c9b19468a12"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.2-ocv.4.8/ocv-darwin-x64.zip"
      sha256 "26998795ae645b2324fde97c9316c7476d946177ebd297157366258880fb4905"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.2-ocv.4.8/ocv-linux-arm64.tar.gz"
      sha256 "33c6db66dab1a042b16406913a97eff871f9e0760b303ee1b71f89cef7046783"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.2-ocv.4.8/ocv-linux-x64.tar.gz"
      sha256 "1b100666240ebf0286babe7a49ab41c04d75d6548876f660d6cce2f1863f7e98"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
