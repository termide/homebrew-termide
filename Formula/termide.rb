class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.29.5"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.29.5/termide-0.29.5-x86_64-apple-darwin.tar.gz"
      sha256 "309e4a87db2a1c0c96cf7046a8c514dfa18798a16c2b1164f4e10188a9cf69a3"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.29.5/termide-0.29.5-aarch64-apple-darwin.tar.gz"
      sha256 "e236aa02f11750d42f76b8d412e026ba437b646b251e43a8250acd95aff6baed"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.29.5/termide-0.29.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1e345a1a6e1d3b700b07ca5e5f0540a0ebb0c998bbf791249aa37fe3ee6859d5"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.29.5/termide-0.29.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "102749272dcb04d71c9d7cfc9d01f137ac9f1e707efd3f357b8e6bef684a0153"
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
