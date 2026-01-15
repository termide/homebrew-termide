class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.8.9"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.8.9/termide-0.8.9-x86_64-apple-darwin.tar.gz"
      sha256 "fe4896b55f4f5cf8c885e9aa95fea75791ad632afad3966539bfb225f1980a12"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.8.9/termide-0.8.9-aarch64-apple-darwin.tar.gz"
      sha256 "c9ceb7fad74429b41a565a4cf7ce79e9b1fc22d55c7cbb8b3e2d03a0e55e4dd8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.8.9/termide-0.8.9-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6442dfb75deb3bdd0440df25be1888d345f652d52c3df917951a814dbce11c0e"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.8.9/termide-0.8.9-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d7d95b4e2902946b03dc7ff6af470eac8e4cbd3293e21ebcf33f5bbe5790cfd5"
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
