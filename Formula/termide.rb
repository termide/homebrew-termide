class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.16.2"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.16.2/termide-0.16.2-x86_64-apple-darwin.tar.gz"
      sha256 "7038fc6cb8e2d083426626b8b341db4a657ef17cb6bb0ca814cf7bc2f8c2d83c"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.16.2/termide-0.16.2-aarch64-apple-darwin.tar.gz"
      sha256 "32f1140205e86d9322f87549d1c151aa80595c903c5e666d71a3021d5951a01d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.16.2/termide-0.16.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "634838dfdd18ae72fef6788e1e5715379f56c328f244465d9b3f517ab160ceb1"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.16.2/termide-0.16.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4d2b2e75d320bf9a3f87f077db2920cefe641a22e29ef670a72d557c34abd064"
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
