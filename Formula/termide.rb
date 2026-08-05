class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.29.7"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.29.7/termide-0.29.7-x86_64-apple-darwin.tar.gz"
      sha256 "16df17f7e2202fb5aa0a2370c4535d60e0604c13133a663ce14a863de9b94394"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.29.7/termide-0.29.7-aarch64-apple-darwin.tar.gz"
      sha256 "ac796309f5bad06deafff5e33033d4d96cdfa41e2f9b0723b0276ad2b0df7d14"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.29.7/termide-0.29.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6e1c0d8f4ee798fdaee7a21cc807c3e98dbbb56ac76f38bcd82267692d56a139"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.29.7/termide-0.29.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "276c32bc7b5de2ae791c3b5b533cdb4eb60fac744d2bdcc10d2de97c0db2252e"
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
