class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.15.1"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.15.1/termide-0.15.1-x86_64-apple-darwin.tar.gz"
      sha256 "67fb3194a30230c0415aaf55272f18d78b05b7f1c55fc0fbcba3605013c78d6b"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.15.1/termide-0.15.1-aarch64-apple-darwin.tar.gz"
      sha256 "c8b02e308e5381eb84172387cdb47a3c58ce1d5bb914bb8f7ca655ef480200a6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.15.1/termide-0.15.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8d38f449dff158e5f2cae19fb1cc20cbb9f5c65c411b73575a943f7c0e24cf8b"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.15.1/termide-0.15.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a971266cbb6f98cc117b015fd84655fba86f4c780d0499de330c97556128de57"
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
