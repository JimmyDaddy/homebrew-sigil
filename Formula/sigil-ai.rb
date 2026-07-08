class SigilAi < Formula
  desc "TUI-first Rust AI coding agent"
  homepage "https://github.com/JimmyDaddy/sigil"
  license "MIT"
  version "0.0.1-alpha.1"

  on_macos do
    on_arm do
      url "https://github.com/JimmyDaddy/sigil/releases/download/v0.0.1-alpha.1/sigil-0.0.1-alpha.1-aarch64-apple-darwin.tar.gz"
      sha256 "800518a652b1fd31f83ff9fa11d6325f2fd6d55953ec1acc1b82a66c8effb44c"
    end

    on_intel do
      url "https://github.com/JimmyDaddy/sigil/releases/download/v0.0.1-alpha.1/sigil-0.0.1-alpha.1-x86_64-apple-darwin.tar.gz"
      sha256 "cb24e8072f6e342bb5345f573b3e695e4b2fe74df8193a2852d6a7fa6030cd20"
    end
  end

  def install
    bin.install "sigil"
  end

  test do
    assert_match "sigil #{version}", shell_output("#{bin}/sigil --version")
  end
end
