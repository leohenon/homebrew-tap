class Opengh < Formula
  desc "Familiar terminal interface for GitHub"
  homepage "https://github.com/leohenon/opengh"
  version "0.0.0-beta.4"
  license "MIT"

  depends_on "gh"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opengh/releases/download/v0.0.0-beta.4/opengh-darwin-arm64.tar.gz"
      sha256 "3a9d8c5e7ac6e6831f1db5c0847798d02fcb7dfa9425c2108dcd02c2068bfdc2"
    else
      url "https://github.com/leohenon/opengh/releases/download/v0.0.0-beta.4/opengh-darwin-x64.tar.gz"
      sha256 "9a29fec30ddb68775ed101b8a82f2f44ac8cb6921fd622dfcdc6d1b13f55b695"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/leohenon/opengh/releases/download/v0.0.0-beta.4/opengh-linux-arm64.tar.gz"
      sha256 "39fcecf85c4a7b0c473c6b4d33d0953bcab82a6a49f547e3322ff14c4986e279"
    else
      url "https://github.com/leohenon/opengh/releases/download/v0.0.0-beta.4/opengh-linux-x64.tar.gz"
      sha256 "446106592eda7bc2dcc040061c8addaae200111143fb5b01d0644a291aed1a6e"
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
