class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.17.20-ocv.4.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.20-ocv.4.8/ocv-darwin-arm64.zip"
      sha256 "509e009cedf0a852fb6f02f00ab22355b198e89b4784b73693d90353376c6175"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.20-ocv.4.8/ocv-darwin-x64.zip"
      sha256 "592d84a10d9025ac92dd1245d283bfeb15790be5b8cf529c0ec6eb22b3ab7f9c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.20-ocv.4.8/ocv-linux-arm64.tar.gz"
      sha256 "29290280b9ddc7a13c91dce083a1b891f3135174d0c981284e7869bb2dbf013d"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.17.20-ocv.4.8/ocv-linux-x64.tar.gz"
      sha256 "9ae7f3a36d7f7c2c0f8fdb88c247c08b19eb12057ff45514c27a7b54963d7b86"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
