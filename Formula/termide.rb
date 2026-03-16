class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.16.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.16.0/termide-0.16.0-x86_64-apple-darwin.tar.gz"
      sha256 "1ac47da286c248a9134fd290cacdd58ed1d3e2506c45338eb76898a8dc220126"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.16.0/termide-0.16.0-aarch64-apple-darwin.tar.gz"
      sha256 "e1b023672473fed74b3026f975813c3ece10ec25fdab640263ab64c43d9e5733"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.16.0/termide-0.16.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "07f503e2d9982fc799111119ad693e1c9f375e8cf44c116426344015662ae5dd"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.16.0/termide-0.16.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c7d3369861b33377e65fb65110a3a6ac5891fd185e146b9207a3c3435a53cfd6"
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
