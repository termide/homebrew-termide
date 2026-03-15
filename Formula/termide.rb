class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.15.4"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.15.4/termide-0.15.4-x86_64-apple-darwin.tar.gz"
      sha256 "a9129a396ca54c06912b73ec8f779e719b1e4330a7564174daf3d35ec8024757"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.15.4/termide-0.15.4-aarch64-apple-darwin.tar.gz"
      sha256 "40253e3e06c3cb6c344840e23cc1dc39ba4834e51776fbaffe1e9c5eda6c6604"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.15.4/termide-0.15.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "52a738962d2fa8340c1b35a3dc3b2f2ff9402c832672f421d5ce0be6dc7a8471"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.15.4/termide-0.15.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "51fb5ffab712d1dcf4f581a7184d080cd37693c8ea6850345e25333392dd4241"
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
