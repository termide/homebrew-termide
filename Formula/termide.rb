class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.17.3"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.17.3/termide-0.17.3-x86_64-apple-darwin.tar.gz"
      sha256 "0ff0d90c47a08399a45035bd14322fe5e1244c1edf688d231c02a03b0ce7ca70"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.17.3/termide-0.17.3-aarch64-apple-darwin.tar.gz"
      sha256 "b85399fe81521f91b463b0a97a578537675dad234287f963c25c6711bf7a4fff"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.17.3/termide-0.17.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ddb19a4486843c5bc38cb899ada9066f24a8bea140616178f4972b3ccf73acfd"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.17.3/termide-0.17.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0bed8fb3d8f764bf00d3c435ca5e1a9398b511bc1dc72d8bc4437ee18cf77650"
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
