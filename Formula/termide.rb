class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.13.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.13.0/termide-0.13.0-x86_64-apple-darwin.tar.gz"
      sha256 "5296214e059f6df7e99170baaef0af4ad62f26e57589864f75b7810f8b71414c"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.13.0/termide-0.13.0-aarch64-apple-darwin.tar.gz"
      sha256 "a7c6b8d1c6c8887eeb31b0d83c2e63fce7a476f0c8929dd042f27843b249d8cd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.13.0/termide-0.13.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "40b32b4fc7841905814c93d37c600f0026fec2b299d091aeabe361e5781e0ed4"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.13.0/termide-0.13.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8f042c41c018c8004b13a51358a3077a02cb7f85b24c3146b886dfd494e1f936"
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
