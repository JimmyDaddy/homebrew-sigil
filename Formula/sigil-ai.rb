class SigilAi < Formula
  desc "TUI-first Rust AI coding agent"
  homepage "https://github.com/JimmyDaddy/sigil"
  version "0.0.1-alpha.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/JimmyDaddy/sigil/releases/download/v0.0.1-alpha.5/sigil-0.0.1-alpha.5-aarch64-apple-darwin.tar.gz"
      sha256 "e9fcffbcff9b856d9b13b655bf1d865616abb4dc61cf0a719fc40509f0434d5f"
    end

    on_intel do
      url "https://github.com/JimmyDaddy/sigil/releases/download/v0.0.1-alpha.5/sigil-0.0.1-alpha.5-x86_64-apple-darwin.tar.gz"
      sha256 "98cc5dd8664c612e8d6c9ce9bf4a37c97db54c1f9aeb77fda59d1062488da7bc"
    end
  end

  def install
    bin.install "sigil"
  end

  test do
    assert_match "sigil #{version}", shell_output("#{bin}/sigil --version")
  end
end
