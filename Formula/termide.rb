class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.18.1"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.18.1/termide-0.18.1-x86_64-apple-darwin.tar.gz"
      sha256 "0c71c7f2441c39a0768553ea7cc158be77368841e3805088e8c5cb27102c1048"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.18.1/termide-0.18.1-aarch64-apple-darwin.tar.gz"
      sha256 "78215667a6ef4392a2b3926820648c9abf98ab618f463f6745c51e3be89779f4"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.18.1/termide-0.18.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3cb2e9784a7caee26d48a5f86e04e1b03a9c82040cb57478a65d9e69f86db4dc"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.18.1/termide-0.18.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ba4be489557a4439f7842702e4321a1781e864f6505102d5af4c2b58c243f81e"
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
