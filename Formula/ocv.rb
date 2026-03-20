class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode"
  version "1.2.27-vim.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode/releases/download/v1.2.27-vim.2/ocv-darwin-arm64.zip"
      sha256 "602b1e5a05d19cd61a85f935168165e43bf87bee322f73f039e87784d9df4b22"
    else
      url "https://github.com/leohenon/opencode/releases/download/v1.2.27-vim.2/ocv-darwin-x64.zip"
      sha256 "e6fb1cbc9fc4be897a39d9d465afcdf2811cf8725a3639aa44b7569abd10e0d3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode/releases/download/v1.2.27-vim.2/ocv-linux-arm64.tar.gz"
      sha256 "28da15bfd1fe9708d202ac679ec20437222442fa8f22f0ae8104e7f91f6d1125"
    else
      url "https://github.com/leohenon/opencode/releases/download/v1.2.27-vim.2/ocv-linux-x64.tar.gz"
      sha256 "880542605573f09551cc3336a0bef119356052ebd98ed1c38fe27bf400872e5c"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ocv --version", 2)
  end
end
