class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.15.13-ocv.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.13-ocv.4.0/ocv-darwin-arm64.zip"
      sha256 "571d93b1182777769e2529e26fb5a57c3c1ef386206a25b9b9f484dcacced435"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.13-ocv.4.0/ocv-darwin-x64.zip"
      sha256 "efefe022531c9d34b254cf435624704df996f7be32b2ecd3afc61fe5bf31a79c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.13-ocv.4.0/ocv-linux-arm64.tar.gz"
      sha256 "edb6c236026673f6cf39cd0b1a7ad2bbbecbb82d4fb7fe9209835fac85bf3d1a"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.13-ocv.4.0/ocv-linux-x64.tar.gz"
      sha256 "1455bd3d4301dcf08d8ae749b3684bcb5f741bc83f3575433974290b6191508c"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
