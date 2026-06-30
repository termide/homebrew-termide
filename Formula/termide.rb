class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.28.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.28.0/termide-0.28.0-x86_64-apple-darwin.tar.gz"
      sha256 "4cf473ae1904a74e1e82694cbd215084b5446306dc964d057fd09ac839c23a00"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.28.0/termide-0.28.0-aarch64-apple-darwin.tar.gz"
      sha256 "bfbdac4fc4fbbce944f06f0b1079094d69c9b7640e1829e617c7af6f98ed1f42"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.28.0/termide-0.28.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "89381b9f80de6b48ba77af8021437ecaef9530b7a274fe9ffb7c0c3b22584a7b"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.28.0/termide-0.28.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5858524b644d43ff47a91002c670ce39c7fa61645f4e769fe9a55fe80d68317a"
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
