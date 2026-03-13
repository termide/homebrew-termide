class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.15.3"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.15.3/termide-0.15.3-x86_64-apple-darwin.tar.gz"
      sha256 "f65f10aff3069fd33edcb96b4b9df48771b8696150cfdcbeee559b87b3fe2321"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.15.3/termide-0.15.3-aarch64-apple-darwin.tar.gz"
      sha256 "c7979bd5a631609759cba56a42607050735eb39f449171d829b98444835b0a02"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.15.3/termide-0.15.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2860e5e1ceac73304e392ffde4d6d085b276b9ede5e776cfe0ef8eaa1b93c5a7"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.15.3/termide-0.15.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7c65604bdc088b5cb62b7c9290fe3fce1e221044ea4fda20979477fe3d5e6c42"
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
