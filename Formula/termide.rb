class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.47.1"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.47.1/termide-0.47.1-x86_64-apple-darwin.tar.gz"
      sha256 "ce10097566b5c554c64e09a94cf8c60a8f759cdc22466076d466311dbb80c3c6"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.47.1/termide-0.47.1-aarch64-apple-darwin.tar.gz"
      sha256 "10e79341ff8647802deb315fdcb7d275090626311a4cb1d2335fd0a2919f5260"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.47.1/termide-0.47.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d533935a4aaa8363b8795d4a9972b9eea1110f347b1104133ca1233693dcd31a"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.47.1/termide-0.47.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "df15289fbe74eb42de15bbebacd98c9a8eebea10238d8cdfd318a627e36dc2ba"
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
