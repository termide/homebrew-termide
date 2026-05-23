class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.23.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.23.0/termide-0.23.0-x86_64-apple-darwin.tar.gz"
      sha256 "d68f12d37d2d188390824d8618f48d5e7c192a6a8d5d8dc86baf756baa8b6d07"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.23.0/termide-0.23.0-aarch64-apple-darwin.tar.gz"
      sha256 "a3c5c195de1e91546b162e3504114121204dcafe09a734293c9f570819c5f8a7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.23.0/termide-0.23.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "11f9d6d369b5013692f13b1ea34945dd9d6e6a44f2010d2e87269566bfce12e7"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.23.0/termide-0.23.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e5ec9f50031ea57b29af16a2861a8517944382cac7c237b4401d998376ce2fca"
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
