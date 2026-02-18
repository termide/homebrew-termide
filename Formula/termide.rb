class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.12.5"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.12.5/termide-0.12.5-x86_64-apple-darwin.tar.gz"
      sha256 "46f24a40160b301d09d47ff5f036582b4ee4623f0fefdda4e20f30d3631af6a0"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.12.5/termide-0.12.5-aarch64-apple-darwin.tar.gz"
      sha256 "c209e29ab8da59dbe23d62de9b45838d9266508fcfceed646fecb7a4012782f5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.12.5/termide-0.12.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "85f37249f5c45f17f96606b6dac8c4589e54b392ab5f3c222f44999007821669"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.12.5/termide-0.12.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "04cd575eb4278d6528651f632ceee080a028cd5a7147cd6d1f1f2b0e7d56d058"
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
