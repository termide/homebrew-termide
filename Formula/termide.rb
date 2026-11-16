class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.50.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.50.0/termide-0.50.0-x86_64-apple-darwin.tar.gz"
      sha256 "1eda09e035fe7fd7bbb84ffbe1b6a76719e55eafef7245a9ea937902fd72eae9"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.50.0/termide-0.50.0-aarch64-apple-darwin.tar.gz"
      sha256 "1d6fe7f307a5cc4accaf51b14c2abee2f13ea6e56f830406c4ecb44ae6342dcb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.50.0/termide-0.50.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c580b5d2eb83587c142df14e7ca15562fd01f52dc6e3169e8d155835b95b8fa7"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.50.0/termide-0.50.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cc804b5f23eb68fed48383126a642508f4dfa1883ad317d6ab41fd61229b08e5"
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
