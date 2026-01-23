class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.10.1"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.10.1/termide-0.10.1-x86_64-apple-darwin.tar.gz"
      sha256 "5ae191bd04b9dd1dc5322ad053d2e9d4959d5bb7fc06110253ce80a3bce01ef3"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.10.1/termide-0.10.1-aarch64-apple-darwin.tar.gz"
      sha256 "3887873729fdc0d5cbc9c601ed6072bfe41e6968a9268742332e1008e9410188"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.10.1/termide-0.10.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "76ca97b21811fd938403053d6c693e06ecd0270c1d31e1cda945b16dd41c35c7"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.10.1/termide-0.10.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "572a818e8af10f06cdc8023b2efd1219cb9bb9082d50a848c00c01f6a9709f77"
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
