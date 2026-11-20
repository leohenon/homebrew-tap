class Opengh < Formula
  desc "Familiar terminal interface for GitHub"
  homepage "https://github.com/leohenon/opengh"
  version "0.0.0"
  license "MIT"

  depends_on "gh"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opengh/releases/download/v0.0.0/opengh-darwin-arm64.tar.gz"
      sha256 "72cea1fa94d59c505c918a6cdfb935e17b2ced96cdc9ee9dcd5d2b2529935ace"
    else
      url "https://github.com/leohenon/opengh/releases/download/v0.0.0/opengh-darwin-x64.tar.gz"
      sha256 "796ccef2ecd17938ae47e92f492521dd6640e62116511987b6768f238c6e5983"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opengh/releases/download/v0.0.0/opengh-linux-arm64.tar.gz"
      sha256 "748479063ea4cafda75071e1d44da22ffa01960b81704504ac59c8d4b7237df4"
    else
      url "https://github.com/leohenon/opengh/releases/download/v0.0.0/opengh-linux-x64.tar.gz"
      sha256 "a320668fa63e3c39e287b59f8e4291182799d78cfe79b24f2d05f17b8508e5cd"
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
