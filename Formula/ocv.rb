class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.18.31-ocv.4.11"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.31-ocv.4.11/ocv-darwin-arm64.zip"
      sha256 "f73d9d88ee4acc6c2954c3e147744f0a4945414640fc7790ff5c31d3f671949a"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.31-ocv.4.11/ocv-darwin-x64.zip"
      sha256 "b768c671dacdf716527b98458fc7033e1a1935cd10e510cbad75d089e607e8b0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.31-ocv.4.11/ocv-linux-arm64.tar.gz"
      sha256 "d879769751220b0192e51f40fee6ccd615851a2bd764015ccbc18a892f64cf1c"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.18.31-ocv.4.11/ocv-linux-x64.tar.gz"
      sha256 "f976c9b16e3160c2a480efbbbd40822a950670e169730d16fbe292f560622a9e"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
