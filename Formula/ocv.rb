class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.15.13-ocv.3.68"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.13-ocv.3.68/ocv-darwin-arm64.zip"
      sha256 "455fc07e88f936857619ebf36cc064d626e723233f2898185c2b784c89cb824c"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.13-ocv.3.68/ocv-darwin-x64.zip"
      sha256 "a219d75bd6b4e3e0c9fa7ddbe8d19123374340aa52542b296ff8586b3bedd731"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.13-ocv.3.68/ocv-linux-arm64.tar.gz"
      sha256 "e58320af04209b8bfa09e3a4bb7bd6853acc72a6568d624b38ab7727bfa8f5ef"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.15.13-ocv.3.68/ocv-linux-x64.tar.gz"
      sha256 "3409627d74ecbd3432630ba77515379dde0da52aaa022ee2b10ea66fd66f2391"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
