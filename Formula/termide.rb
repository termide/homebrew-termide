class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.20.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.20.0/termide-0.20.0-x86_64-apple-darwin.tar.gz"
      sha256 "632ca4ad64f7876c0b30b6dc6f147e68a53c008e12e35e5d9e27f15ff872e3d4"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.20.0/termide-0.20.0-aarch64-apple-darwin.tar.gz"
      sha256 "8d2dd8646d78608b3835f27209c1a7ddb1b5c57a72a6a0781ddf5eb5984b99c1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.20.0/termide-0.20.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fddf113bb8cbb545b95955f33a9405f1b94853e9b8cdda3d45332a14ed5d02c3"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.20.0/termide-0.20.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4817d7dfb0ffa616b238c1e6ab30a09a733ba20c4efdb2e27a3e105ca3e6b001"
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
