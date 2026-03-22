class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.17.2"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.17.2/termide-0.17.2-x86_64-apple-darwin.tar.gz"
      sha256 "83b9ed366f290ad3fe9c14f162c88f4d153388ef0b7d241158391871c2a75814"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.17.2/termide-0.17.2-aarch64-apple-darwin.tar.gz"
      sha256 "43511fe14054d46de7b80a42d01289cbab20f6193b64405d8e410211ad0a6349"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.17.2/termide-0.17.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "211f214c444912b531e5df7e23b7aa42168de542a38ea27ed12063101d03a699"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.17.2/termide-0.17.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "413c16160ca39f576b21f55ccce6cb394ebab872e23d3f30ca1e6d8bf8e563d8"
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
