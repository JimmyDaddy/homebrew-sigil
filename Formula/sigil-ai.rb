class SigilAi < Formula
  desc "TUI-first Rust AI coding agent"
  homepage "https://github.com/JimmyDaddy/sigil"
  version "0.0.1-alpha.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/JimmyDaddy/sigil/releases/download/v0.0.1-alpha.3/sigil-0.0.1-alpha.3-aarch64-apple-darwin.tar.gz"
      sha256 "534fc2dd007b92eeeaefdfbcb604cfba702db92bdbe8e4fd9e2a5ba7a9e47d90"
    end

    on_intel do
      url "https://github.com/JimmyDaddy/sigil/releases/download/v0.0.1-alpha.3/sigil-0.0.1-alpha.3-x86_64-apple-darwin.tar.gz"
      sha256 "84bb193a1056563d3397a26989959c84f16c2fe121f2c0858ea4d630943dbdc1"
    end
  end

  def install
    bin.install "sigil"
  end

  test do
    assert_match "sigil #{version}", shell_output("#{bin}/sigil --version")
  end
end
