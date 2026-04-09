class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.4.1-ocv.3.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.1-ocv.3.22/ocv-darwin-arm64.zip"
      sha256 "420facc4f9cc4f8b022a2ce443dea90873a65d1d5761362bfe80af14ced3056a"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.1-ocv.3.22/ocv-darwin-x64.zip"
      sha256 "e17b306ebeb2816896058863b2316248720b15f00429244127939e8929ef3e14"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.1-ocv.3.22/ocv-linux-arm64.tar.gz"
      sha256 "5c8ddb886e92ce62e92fa554f61c00068a467511948f0b6f79c34455791070af"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.1-ocv.3.22/ocv-linux-x64.tar.gz"
      sha256 "e0c402fb12d3d1a958bc81eed6cbd8de9cd9cc6e17ebc240477450b50fea94b8"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
