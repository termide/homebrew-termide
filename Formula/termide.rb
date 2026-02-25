class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.14.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.14.0/termide-0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "05721a43ca2f3239394be4faa93d2e483c9964218d018d346fff11b5641e495f"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.14.0/termide-0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "5ef2db8a2b425dcb763a3193e5e3978caa5aeabf5c6735234263ad72867f4b0b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.14.0/termide-0.14.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0d77bf895adbaec527161bb93e0f17843af98a408e4e5d8c3322ee8017fbea97"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.14.0/termide-0.14.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4c970cd7945f504fd1a995ffe5444f47698f1ac184e488dda476020cc082dc86"
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
