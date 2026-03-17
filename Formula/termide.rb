class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.16.3"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.16.3/termide-0.16.3-x86_64-apple-darwin.tar.gz"
      sha256 "299e08250af1e27744b3de1ea05543650d1eff42cd664c15308259ec0290a978"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.16.3/termide-0.16.3-aarch64-apple-darwin.tar.gz"
      sha256 "b280814f422eda2f75b463d01ae093d2c3969de64f31f0ac75bb36122d6438c1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.16.3/termide-0.16.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b76cbc6794f34edd20213f27ed98260a6bf1d5e1203151d7afd6cd3a97e4ee95"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.16.3/termide-0.16.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d96dadd686e071208df06dab4e0b5fd0aad0d00b11b4fb6333f3d0084c778293"
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
