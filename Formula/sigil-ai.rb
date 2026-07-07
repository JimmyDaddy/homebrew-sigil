class SigilAi < Formula
  desc "TUI-first Rust AI coding agent"
  homepage "https://github.com/JimmyDaddy/sigil"
  license "MIT"
  version "0.0.1-alpha"

  on_macos do
    on_arm do
      url "https://github.com/JimmyDaddy/sigil/releases/download/v0.0.1-alpha/sigil-0.0.1-alpha-aarch64-apple-darwin.tar.gz"
      sha256 "8c34f0d44faf0f7c593061ef2eebf384fc18f5b2907e2da6300ffe22468659f2"
    end

    on_intel do
      url "https://github.com/JimmyDaddy/sigil/releases/download/v0.0.1-alpha/sigil-0.0.1-alpha-x86_64-apple-darwin.tar.gz"
      sha256 "78637095138b07adc9e88ae141f6d2346face8bb7c1ba91cff8474cd0d53b4ad"
    end
  end

  def install
    bin.install "sigil"
  end

  test do
    assert_match "sigil #{version}", shell_output("#{bin}/sigil --version")
  end
end
