class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.34.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.34.0/termide-0.34.0-x86_64-apple-darwin.tar.gz"
      sha256 "dd75db34e116a9b0c7a27f12d5a3b7fa766d43679d01e758ef02843e0cf56035"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.34.0/termide-0.34.0-aarch64-apple-darwin.tar.gz"
      sha256 "fd15188fb4827cc1e4bbdd85c3bc11e162e505ec3b51a364a858519985cf931a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.34.0/termide-0.34.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bdb2908270773cd6a164d5593794d00925c42dcd01f67afb59795627c9d25116"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.34.0/termide-0.34.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "08abf17bdea3f1a390844c409717709f39cd2cf482c0d09127de964b8a4f3c1e"
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
