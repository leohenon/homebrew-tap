class Opengh < Formula
  desc "Familiar terminal interface for GitHub"
  homepage "https://github.com/leohenon/opengh"
  version "0.0.0-beta.3"
  license "MIT"

  depends_on "gh"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opengh/releases/download/v0.0.0-beta.3/opengh-darwin-arm64.tar.gz"
      sha256 "071897ebdef21d81f2e7f8a9c89d47259c1a51469136a8f76af6ae198f083c64"
    else
      url "https://github.com/leohenon/opengh/releases/download/v0.0.0-beta.3/opengh-darwin-x64.tar.gz"
      sha256 "16ce577a826be12d74edaf6732241622d2bb985abffe563b89f775e44ee9d0d4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opengh/releases/download/v0.0.0-beta.3/opengh-linux-arm64.tar.gz"
      sha256 "721ed07e74473161009eea9a70aea9d5147873881309278b3f79f2d874bd9239"
    else
      url "https://github.com/leohenon/opengh/releases/download/v0.0.0-beta.3/opengh-linux-x64.tar.gz"
      sha256 "6458a367b34a4779852bbc0ed3d05a72fb9990cb9959de4e07b00a4f034ec0bf"
    end
  end

  def install
    bin.install "opengh"
    prefix.install "THIRD-PARTY-NOTICES.md"
  end

  def caveats
    b, o, r = Tty.color? ? ["\e[0m\e[1m", "\e[38;5;208m", "\e[0m"] : ["", "", ""]
    text = <<~EOS
          #{b}▄▄██████▄▄#{r}
        #{b}▄████████████▄#{r}
       #{b}▟██ ▝▀▀▀▀▀▀▘ ██▙                                  █#{r}
      #{b}▟██▛  #{o}▀▄      #{b}▜██▙   █▀▀█  █▀▀█  █▀▀█  █▀▀█  █▀▀█  █▀▀█#{r}
      #{b}███    #{o}▄▀      #{b}███   █  █  █  █  █▀▀▀  █  █  █  █  █  █#{r}
      #{b}▜██▖  #{o}▀  ▀▀▀▘ #{b}▗██▛   █▄▄█  █▄▄█  █▄▄▄  █  █  █▄▄█  █  █#{r}
      #{b}▝██▀▙▄▄    ▄▄▟███▘         █                 ▄▄▄█#{r}
        #{b}▜▙▖▀▀    ▜███▛#{r}
         #{b}▝▀▜▌    ▐▛▀▘#{r}
    EOS
    gh = Formula["gh"].opt_bin/"gh"
    unless gh.executable? && quiet_system(gh, "auth", "token", "--hostname", "github.com")
      text += "\nThe GitHub CLI is not signed in. Sign in with:\n  gh auth login --hostname github.com\n"
    end
    text + "\nGet started:\n  #{b}opengh#{r}\n"
  rescue FormulaUnavailableError
    text
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/opengh --version")
  end
end
