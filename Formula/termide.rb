class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.9.1"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.9.1/termide-0.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "e0ead14dda13a06aa5717fd986130247830aa434adb38f4c140b0ddcac021fa6"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.9.1/termide-0.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "bf1fc2a73522c083e7807096d5cb5f784aa26a0747f1b60eace1069de8c9a059"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.9.1/termide-0.9.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8ddbd2834e27d9751bbb58d2420197386b57a77dd858133deb7f3c5b668ba52f"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.9.1/termide-0.9.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "37eb031a256aad066da0bf94a2863bb6bd24d6751a78a3d1e0faa43e57e0c976"
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
