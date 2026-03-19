class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.16.4"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.16.4/termide-0.16.4-x86_64-apple-darwin.tar.gz"
      sha256 "672099dcfa46f0e1969849c0b1befaed9a9b26d1dd116e7cd8d3657135bcf3cd"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.16.4/termide-0.16.4-aarch64-apple-darwin.tar.gz"
      sha256 "41d266dc6bab25cdb9126231c3e0dc6f4e51dc422b3d8f9f54d005b110dcddbf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.16.4/termide-0.16.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ef6c1ae5091f997760909a9dbcac8bb06daa3a9103edbd5d895793b3be802f09"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.16.4/termide-0.16.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "36a9d5e812550693e66e71c9ad90707e031c1c55027b1cda1f9bc91b29fda80a"
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
