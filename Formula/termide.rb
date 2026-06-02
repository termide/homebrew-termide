class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.23.6"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.23.6/termide-0.23.6-x86_64-apple-darwin.tar.gz"
      sha256 "9406febb413f716c238ba5ac0fbc4754b4b95f744368a0569007c6bcef70adc2"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.23.6/termide-0.23.6-aarch64-apple-darwin.tar.gz"
      sha256 "74c3822c7b7db9e906f950266874c0da34c30f9fba5e08208a0c727730391b74"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.23.6/termide-0.23.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "22b733f12f6361faebd4607595c4ad9beaef31488b5ba23d17037797014c0b19"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.23.6/termide-0.23.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9906645c59bb30529e6647d7e2c2f3e4e17c0ebf2f300155d9369087d12c489c"
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
