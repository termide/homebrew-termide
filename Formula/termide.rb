class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.11.1"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.11.1/termide-0.11.1-x86_64-apple-darwin.tar.gz"
      sha256 "dbb7d3adb046083830536a56e8fb427449e6db9d44aac22ef44fa688aa02e9da"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.11.1/termide-0.11.1-aarch64-apple-darwin.tar.gz"
      sha256 "885f8ba48789cb282f00785dda6720298fbfbb7590f07158d2168249ee223592"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.11.1/termide-0.11.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4e38702ae6b8fe624919ea5e5acb555704fff14d97f256091ae43bc3483a3c4b"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.11.1/termide-0.11.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b3a3319e6bdd4e294d4602303646977f860a2e172d6ce01718ae65dae17e1077"
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
