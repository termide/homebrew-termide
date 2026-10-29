class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.47.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.47.0/termide-0.47.0-x86_64-apple-darwin.tar.gz"
      sha256 "5509ba5aa159ca53d056e65f4d75ac642253ec7f2966597e979d6d776ef28c59"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.47.0/termide-0.47.0-aarch64-apple-darwin.tar.gz"
      sha256 "c2fab109808ceb1202eb7b31d1f6a94a67c10ada3527a5d27e9aff3178d026d8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.47.0/termide-0.47.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3ec3a2f1e518cf585969116223bf681189d57b9f4e19863336f8bf8791f95ee1"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.47.0/termide-0.47.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ed3251167212725f2197c8642cbd01d75fb512924408272ff619ff71d3cd7dca"
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
