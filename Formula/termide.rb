class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.14.3"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.14.3/termide-0.14.3-x86_64-apple-darwin.tar.gz"
      sha256 "6a52e6e13e0c93f00852abe789609117301d4fcfc7684a45ce7ed656d904bbcf"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.14.3/termide-0.14.3-aarch64-apple-darwin.tar.gz"
      sha256 "710f45a5487bbc97824189bf82792d9ce04eeedaf6a9a745df32c6679b5b703a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.14.3/termide-0.14.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a56311067442a1956e899c5501dc9ec5fefe1129e9cabb88946a5464b2bb6e23"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.14.3/termide-0.14.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1bb1fff99c96ea89bd2ac055782ead6e7b33abee2ec39c9f52be5bd25e518ba4"
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
