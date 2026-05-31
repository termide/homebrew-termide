class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.23.1"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.23.1/termide-0.23.1-x86_64-apple-darwin.tar.gz"
      sha256 "a3bae0bef5fa5b7a087261da5b56a8ea72dcf671069b48a80e4b4349b73e5a14"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.23.1/termide-0.23.1-aarch64-apple-darwin.tar.gz"
      sha256 "bc13ead1c46768fbae093624a5be7124e439283e06e9ed1d06d7333ad09b065c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.23.1/termide-0.23.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "edc910117ec83425b2ee670205e6fadf5b813909560558f7d9ec51d6e330550a"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.23.1/termide-0.23.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e7f39be0a8aadf37554f1cc7c789fc5a2193a65b8f86dacf7b1e9a1dd6913ea5"
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
