class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.17.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.17.0/termide-0.17.0-x86_64-apple-darwin.tar.gz"
      sha256 "e581a1dc6881cc6e16a7a110fc7c7eac4c471c8dc7f77a461d2fd7c7b9f02125"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.17.0/termide-0.17.0-aarch64-apple-darwin.tar.gz"
      sha256 "d5f9f27809a4bfc382ffdf8ed7c50036b9ba219fff5583191b8a752de8012681"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.17.0/termide-0.17.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "48b49eb1b9c004fc1b2875bf505f54a0c95a971a99af5470b420498be549dcbd"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.17.0/termide-0.17.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b610995e109f39557dd4c1697eb921c51f619a2d939d494033ba5750ad56b570"
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
