class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.18.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.18.0/termide-0.18.0-x86_64-apple-darwin.tar.gz"
      sha256 "b8fe73d0a22e5c7cf57ece75f12be9b49b3c33aa58edf554534c806b0a78410f"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.18.0/termide-0.18.0-aarch64-apple-darwin.tar.gz"
      sha256 "ae6ec3e8c9501418f91e2307e021c461d1c62ce4828b41af7d09d14bd12b531e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.18.0/termide-0.18.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0f1e41df43182a6bb0b6a8c856eaf7a131467bb30cf474e5c86d94abf5e29b76"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.18.0/termide-0.18.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a0577e310ad19d0bcb3d8616f0f30cbbc00698d8d1cdfcf296f0154c9fdbb182"
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
