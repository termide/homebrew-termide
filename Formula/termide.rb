class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.30.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.30.0/termide-0.30.0-x86_64-apple-darwin.tar.gz"
      sha256 "71bac7d1d4fc3af8cd23fb222970f26e0ed31bab38f52bf474c719a87352e571"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.30.0/termide-0.30.0-aarch64-apple-darwin.tar.gz"
      sha256 "77ec79bac075a151f7ed29c563b9a848bea707536a27d39e7ff1e4ad0af66faf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.30.0/termide-0.30.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5b5de3b42cc0b7d62a6050c978391021aa69ab75fa028c43541b029495f5272b"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.30.0/termide-0.30.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9907ae7d4044b84f7fb96c115a702b41c0722d5f68d8d3947fe7386d79014380"
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
