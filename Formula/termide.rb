class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.44.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.44.0/termide-0.44.0-x86_64-apple-darwin.tar.gz"
      sha256 "c8e9d6bbc9353f8affbf8bf861dc2f1c43fc6e07a64a98306440bede952d5d06"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.44.0/termide-0.44.0-aarch64-apple-darwin.tar.gz"
      sha256 "1ff6a2be96c30afe9d9ce7432b80bd99a4a8026e0fc01612d7eec549352c9f98"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.44.0/termide-0.44.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "08a7dece5401d016acf8efe68242c06b65ba0111de538bf79c432131ce7cf762"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.44.0/termide-0.44.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e5f45520ad1196f6aa4896e9a75e7abeed65413f418c9b6a35bef776b7106042"
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
