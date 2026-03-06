class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.14.2"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.14.2/termide-0.14.2-x86_64-apple-darwin.tar.gz"
      sha256 "24bce099348ec94a43aa054aa5744b7161f1983e967e4092d51a30e7490610fc"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.14.2/termide-0.14.2-aarch64-apple-darwin.tar.gz"
      sha256 "e6b57a3d97f53f1268441575172518b959780b56422abced31e18ca118b2a775"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.14.2/termide-0.14.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cf749b69cad5b4b43f6c360832d17dd54d8cf60e7ca49f4f0ebac37f5e17e9a3"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.14.2/termide-0.14.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "caea7eabf83b8b9b103c556527a34a34c15ff393e9ea24647e16f7f29a682fbc"
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
