class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.29.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.29.0/termide-0.29.0-x86_64-apple-darwin.tar.gz"
      sha256 "dd3a02997ca9418c8ea590459367b1df67f21cc3e8082479a88a8ab74d1d0bc0"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.29.0/termide-0.29.0-aarch64-apple-darwin.tar.gz"
      sha256 "f7e4ef617cf53562d7f73ea941200eb49824229fa4b4d76d8223ad21682d53cd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.29.0/termide-0.29.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "65f1fec00390c3a3b92c4f6947247964f3cb58c07111d486889fe1626436c32b"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.29.0/termide-0.29.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "980a1ccd71f7ba9f9cbd384ade5094b58594a3b090478ad2d5eefefbebee92d3"
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
