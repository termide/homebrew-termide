class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.12.2"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.12.2/termide-0.12.2-x86_64-apple-darwin.tar.gz"
      sha256 "06f29e3c86d72d55ffa7ebb8145338f962c1c5ea4988864cd3ff9792df0479ea"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.12.2/termide-0.12.2-aarch64-apple-darwin.tar.gz"
      sha256 "37e0e36a0ed7eb0cf6c2c2d0cd3b49d8a6add55deb7d6133042c53fc5468de6b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.12.2/termide-0.12.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fa0f3796208d633be63f14b8d33dcb0153e179950b9ca7f7825d7f870b3379e4"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.12.2/termide-0.12.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "21391d471ec541b0727080d6e5571f7fcd7a11abd3d019f8e77d0e381085e34e"
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
