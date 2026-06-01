class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.23.2"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.23.2/termide-0.23.2-x86_64-apple-darwin.tar.gz"
      sha256 "13d647ee102e525be8d044e86bb398ae734b1e95ea87feb7c2e68112c3f58601"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.23.2/termide-0.23.2-aarch64-apple-darwin.tar.gz"
      sha256 "64db4c40a2aa99e1c386e921f980aee06a3ab453cfeaea2507ccfc999cda0a5c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.23.2/termide-0.23.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "52e7036bdf469a33e3762006eee22d8a38cc0465b1a9fc0669e4c0a56eb6436d"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.23.2/termide-0.23.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6282aa23325e3408fdd1d1302b6a56c6b10959d2b17c289c6c54e3ccc39d8a58"
    end
  end

  def install
    bin.install "termide"
    doc.install "README.md"
    doc.install "LICENSE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/termide --version")
  end
end
