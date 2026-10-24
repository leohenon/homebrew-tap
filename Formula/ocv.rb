class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.19.4-ocv.4.14"
  license "MIT"
  conflicts_with "ocv-v2", because: "both install the ocv executable"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.19.4-ocv.4.14/ocv-darwin-arm64.zip"
      sha256 "d05bf080c2b48131ce1d088152446e6c07b2222d9d8b238f962647c4a249ada5"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.19.4-ocv.4.14/ocv-darwin-x64.zip"
      sha256 "84d244b3f49c37aaa639c819917b2f967d3932739b9941e5ccd3e3d98f75ef17"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.19.4-ocv.4.14/ocv-linux-arm64.tar.gz"
      sha256 "f77c883ebc99c0d664c3a7db5bf9864a379568881417806a1cd1844165224335"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.19.4-ocv.4.14/ocv-linux-x64.tar.gz"
      sha256 "7298b8191ae7cee56c1b50e6426f085750576acb20f3332099b317e0628462db"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version")
  end
end
