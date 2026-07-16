class SigilAi < Formula
  desc "TUI-first Rust AI coding agent"
  homepage "https://github.com/JimmyDaddy/sigil"
  version "0.0.1-alpha.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/JimmyDaddy/sigil/releases/download/v0.0.1-alpha.4/sigil-0.0.1-alpha.4-aarch64-apple-darwin.tar.gz"
      sha256 "571d6d6fc6d3adebaac767a04be00b9f94733917d5faf2b44106f12596279006"
    end

    on_intel do
      url "https://github.com/JimmyDaddy/sigil/releases/download/v0.0.1-alpha.4/sigil-0.0.1-alpha.4-x86_64-apple-darwin.tar.gz"
      sha256 "cc20014d5ff91edade7c06bf744c63a706898d0fe50c05a03e4d322c4fbef5d1"
    end
  end

  def install
    bin.install "sigil"
  end

  test do
    assert_match "sigil #{version}", shell_output("#{bin}/sigil --version")
  end
end
