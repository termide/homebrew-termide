class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.23.4"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.23.4/termide-0.23.4-x86_64-apple-darwin.tar.gz"
      sha256 "9bc056fd0379da0cb55c9dbaeda4539f0718758ece60aaba795780eb04e1ea46"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.23.4/termide-0.23.4-aarch64-apple-darwin.tar.gz"
      sha256 "6f7674313e7a47f7883061b0f634df1d34e32de86b5b6b05cb85a99601aad09b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.23.4/termide-0.23.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f579996284ac824f35420571300f953f421f9c57db9a2da803def12660bbe4a3"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.23.4/termide-0.23.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4c89fc3a0d7c77b5328e5389004d3a52c5ef8a6e81d9c186cd86b4f57fa62bac"
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
