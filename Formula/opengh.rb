class Opengh < Formula
  desc "Familiar terminal interface for GitHub"
  homepage "https://github.com/leohenon/opengh"
  version "0.0.0-beta.2"
  license "MIT"

  depends_on "gh"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opengh/releases/download/v0.0.0-beta.2/opengh-darwin-arm64.tar.gz"
      sha256 "be910d93609c1a3d44da49d99bf69efda1d44c1648c406116f65df0c36f378d1"
    else
      url "https://github.com/leohenon/opengh/releases/download/v0.0.0-beta.2/opengh-darwin-x64.tar.gz"
      sha256 "cd5893a425de1a0e61bb9901a8dee2dbfe4d9333b612a6f4833f9cce2bdda4c7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opengh/releases/download/v0.0.0-beta.2/opengh-linux-arm64.tar.gz"
      sha256 "3dfdd65eeff2caf98ae0a7e4c9d5b951d80cc27ce497b5d22d0b94f7f11fc12b"
    else
      url "https://github.com/leohenon/opengh/releases/download/v0.0.0-beta.2/opengh-linux-x64.tar.gz"
      sha256 "e8e68e675f742c02b98267e91f899043617f12a7c7191fbcae998016cddc0053"
    end
  end

  def install
    bin.install "opengh"
    prefix.install "THIRD-PARTY-NOTICES.md"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opengh --version")
  end
end
