class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.11.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.11.0/termide-0.11.0-x86_64-apple-darwin.tar.gz"
      sha256 "e3f5b04a83847d4fdbdcca1d20584f4aabb708b21d2f83ba557d6c4c0b76a31d"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.11.0/termide-0.11.0-aarch64-apple-darwin.tar.gz"
      sha256 "6441ff9664e060c57d922b4a9ed3784bec46d73a1727f1d0d7ca0a11b38cec54"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.11.0/termide-0.11.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6d7d5461940d796ac4024d50d4c526e0286e454d44a1ad28f32ec812808788d4"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.11.0/termide-0.11.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d3366a27d5c9bb7f78d22646849fd379fe438a8810e92a3fdd8a813ad211170e"
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
