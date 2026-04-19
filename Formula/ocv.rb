class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.14.18-ocv.3.25"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.18-ocv.3.25/ocv-darwin-arm64.zip"
      sha256 "0231325a1a2b83416e9907274d71411a326117c497b16985f829b16cbdd5d286"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.18-ocv.3.25/ocv-darwin-x64.zip"
      sha256 "f9982ee79987d204e44aa915da46e985d96262c187e77446dd3fd15d8be6cfef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.18-ocv.3.25/ocv-linux-arm64.tar.gz"
      sha256 "77a4b9146deb62ef4a2e09f66f2ddecd3592ff12069dc99fe0ea2df044348105"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.14.18-ocv.3.25/ocv-linux-x64.tar.gz"
      sha256 "cc6200e999da4fec4974145d789c55f7d5b8c6227d3d9537a746d15f548b1d8d"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
