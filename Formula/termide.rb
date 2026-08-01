class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.29.6"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.29.6/termide-0.29.6-x86_64-apple-darwin.tar.gz"
      sha256 "387f170409fb180816c09d88d8625b75c5d43d32c239efd7c0eed789b37fda87"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.29.6/termide-0.29.6-aarch64-apple-darwin.tar.gz"
      sha256 "312ef1aaf56039f6e5ddbf1697dfda3b5d2d9f8e50c551a36edd30abb9b16f97"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.29.6/termide-0.29.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ca44f39361d7c557d7d4dec5d5322c3c94b4656edc91d8c3cf3f3c2ffde17d3d"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.29.6/termide-0.29.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e98869974b8937879f01f54d82f9965a075e0ea6f6f6fc19c41598bcccc8ba89"
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
