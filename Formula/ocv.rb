class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode-vim"
  version "1.4.3-ocv.3.23"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.3-ocv.3.23/ocv-darwin-arm64.zip"
      sha256 "38905e26bcc4ae006e645b0ea252a243dfa41acf88d5f84290760deeb676b4c6"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.3-ocv.3.23/ocv-darwin-x64.zip"
      sha256 "3f6beba456bc098eef3dc80423f845ca4da1f0658a3cd30c8e93a2b4e94bdfe8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.3-ocv.3.23/ocv-linux-arm64.tar.gz"
      sha256 "8bfc2117d05597e5456dad9dd8eb97a94a1459ef9b679def8aeeaee891716388"
    else
      url "https://github.com/leohenon/opencode-vim/releases/download/v1.4.3-ocv.3.23/ocv-linux-x64.tar.gz"
      sha256 "3517815d2871e2e955b9946f69b97051a541307c67d2ef4d89958869b24b8a9d"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
