class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.15.2"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.15.2/termide-0.15.2-x86_64-apple-darwin.tar.gz"
      sha256 "bc102a689d51e6d0ade8ceb7c6dec2af8e88855ac7898d4a6d421a693de94fdf"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.15.2/termide-0.15.2-aarch64-apple-darwin.tar.gz"
      sha256 "a4bbb14e7637b7c190791d279378124c6e8641e451e5488c0a0b756801b511fd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.15.2/termide-0.15.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c2c5757077c02064d9863d436a3b947380e2c82ca1338d4a6a1ca9ff48586d39"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.15.2/termide-0.15.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "732229cd9b865710d2ea824adf6b1266315784bb0483851021f9b71f0679b55c"
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
