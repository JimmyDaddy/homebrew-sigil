class SigilAi < Formula
  desc "TUI-first Rust AI coding agent"
  homepage "https://github.com/JimmyDaddy/sigil"
  version "0.0.1-alpha.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/JimmyDaddy/sigil/releases/download/v0.0.1-alpha.2/sigil-0.0.1-alpha.2-aarch64-apple-darwin.tar.gz"
      sha256 "d302b7c69a1a033052eaad62d6f5a2abd1d7361f04a5bf5d15a2f6b9e4cace41"
    end

    on_intel do
      url "https://github.com/JimmyDaddy/sigil/releases/download/v0.0.1-alpha.2/sigil-0.0.1-alpha.2-x86_64-apple-darwin.tar.gz"
      sha256 "9fa841eadf637376aed987ab1eabcd2d3203a682b075a6524b880360a7a6a92b"
    end
  end

  def install
    bin.install "sigil"
  end

  test do
    assert_match "sigil #{version}", shell_output("#{bin}/sigil --version")
  end
end
