class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.41.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.41.0/termide-0.41.0-x86_64-apple-darwin.tar.gz"
      sha256 "43a79ca38df5053d81560dc9bc397c3a842864244da1edbf14bd6a0b17daa250"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.41.0/termide-0.41.0-aarch64-apple-darwin.tar.gz"
      sha256 "7d3f834b7fe3de400583e360526056d0ee3566905ccb046563f8d6a4503a9f2f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.41.0/termide-0.41.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "15651d514bec5dbaac9340acf20441dd5a99b0ba25eb780f44250762db976f0c"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.41.0/termide-0.41.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1f96044f010c4841b8e9d4cd37d9d0f6fe3f2c5ba404c1a80f63e69e5637239f"
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
