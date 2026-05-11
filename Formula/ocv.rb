class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.14.41-ocv.3.47"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.41-ocv.3.47/ocv-darwin-arm64.zip"
      sha256 "369c5a2fe06de378b1567cdeea24837c5d4cc0406c62b3afe2fe0ee88142c1e3"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.41-ocv.3.47/ocv-darwin-x64.zip"
      sha256 "0bf8af822fc97213e59585e029570821f1115c2bc3a0c3d9ad1f36d00f2aaeab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.41-ocv.3.47/ocv-linux-arm64.tar.gz"
      sha256 "62d6f15d19df2f1f18c4a2a4d59379e7fe080621863e664a2a178d85f65ec4ab"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.41-ocv.3.47/ocv-linux-x64.tar.gz"
      sha256 "8d9125e265136db1463a5e6ba2bd0b28ac28c4fdd3dce668866e54e171803298"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
