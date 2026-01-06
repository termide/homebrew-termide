class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.8.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.8.4/termide-0.8.4-x86_64-apple-darwin.tar.gz"
      sha256 "cf23e8f904d095f98a6fe55275772c20ad342e7ea4ffa220f520326b70bcccdc"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.8.4/termide-0.8.4-aarch64-apple-darwin.tar.gz"
      sha256 "af2f0f9a64f280c496a188fc983600a1038b0c48de9ffcd460bc2dc05f3831e0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.8.4/termide-0.8.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ab2334745489616231ce969efea41a09a07a89e4684353e62ad564e0f8d1d252"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.8.4/termide-0.8.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "35abedd88f2ad4c1c622aff7fd954c90025b06615d2f7de9b52e6e128ce3f3a2"
    end
  end

  def install
    bin.install "termide"

    # Install help files
    (share/"termide/help").install "help/en.txt"
    (share/"termide/help").install "help/ru.txt"

    # Install documentation
    doc.install "README.md"
    doc.install "LICENSE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/termide --version")
  end
end
