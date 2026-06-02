class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.23.5"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.23.5/termide-0.23.5-x86_64-apple-darwin.tar.gz"
      sha256 "f29c5b5dda5c7b36a75de315861faef30b84aaaaf45e53aa04f74f809922acb9"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.23.5/termide-0.23.5-aarch64-apple-darwin.tar.gz"
      sha256 "accb10b33a859b33b3408c6a30e26f3409702d475b85a50d430fe6f7646a2fc9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.23.5/termide-0.23.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "82ada70634179b6aaf62990be6c5a3351ba1912cf93621f9f6053811f6ea5ad6"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.23.5/termide-0.23.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "25f3d52910c875eac728d3e14c3d8d62952fbbdd53cd97a1e53ea893e6baaca2"
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
