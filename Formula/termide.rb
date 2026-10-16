class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.42.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.42.0/termide-0.42.0-x86_64-apple-darwin.tar.gz"
      sha256 "79d570d405e2533903cbd4ef0f447fdc3389704be73fe22f2c1d1071ee5d95b4"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.42.0/termide-0.42.0-aarch64-apple-darwin.tar.gz"
      sha256 "5a579e67ea55a6b6110974d42fc34fb21524cc1a19b54a1f26101f5b0697965f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.42.0/termide-0.42.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "3bb4a76fdbbb3627db19c1b9e9d936addc209b82bfa5547e4597a0d4862d0f13"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.42.0/termide-0.42.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4796b4642aae126a9d67f0ef20375496215c04b93adcebed6e8c6d2b8f28d703"
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
