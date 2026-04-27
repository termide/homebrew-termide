class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.21.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.21.0/termide-0.21.0-x86_64-apple-darwin.tar.gz"
      sha256 "c09e2d0a5d81ac3a37ee66dd66403fb04b02ae1742c0e1e11f2ea709f1c557b3"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.21.0/termide-0.21.0-aarch64-apple-darwin.tar.gz"
      sha256 "ed8f3ff9bf65f5f68fc33b28b62a2d2a3b573b44a7ed0658768d664f3e28e490"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.21.0/termide-0.21.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a86772dbe8697b9301a7f62a9caec83504770c012e7caa344bdd6f595ca24816"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.21.0/termide-0.21.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "80c3571f522d1d53fc189d8e675fe2eaf53f0021f17af997cb2aa1bd074a86ca"
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
