class Ocv < Formula
  desc "OpenCode with Vim keybindings - AI coding assistant for the terminal"
  homepage "https://github.com/leohenon/opencode"
  version "1.2.27-vim.2.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode/releases/download/v1.2.27-vim.2.1/ocv-darwin-arm64.zip"
      sha256 "c326f6fc76f55912e51175e8cb6bd491dd1e948f9351ae8f60d969536b88ad06"
    else
      url "https://github.com/leohenon/opencode/releases/download/v1.2.27-vim.2.1/ocv-darwin-x64.zip"
      sha256 "36e99a33ea1acc8c005272a932a1599a61f336e4940cefd768f7535a06c1308b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opencode/releases/download/v1.2.27-vim.2.1/ocv-linux-arm64.tar.gz"
      sha256 "ee7ca4c562454d1af761f9cc4c2b98d3e4b3a1b05c196a15c5f2aee5a33bc6a1"
    else
      url "https://github.com/leohenon/opencode/releases/download/v1.2.27-vim.2.1/ocv-linux-x64.tar.gz"
      sha256 "eda516d57657a39391587ea8a491b236d231e3b98480cc690b23dbe658476c96"
    end
  end

  def install
    bin.install "opencode" => "ocv"
  end

  test do
    assert_match version.to_s, shell_output("\#{bin}/ocv --version", 2)
  end
end
