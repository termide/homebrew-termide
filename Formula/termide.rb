class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.48.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.48.0/termide-0.48.0-x86_64-apple-darwin.tar.gz"
      sha256 "739f10179ffa0c493d559301b586f6de2016256b2c072b4a24c11aca93e2ee0f"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.48.0/termide-0.48.0-aarch64-apple-darwin.tar.gz"
      sha256 "0a8264fb75343eeb851db38ae37ce644dde2fd0a0cbed52ed1f565c58168f512"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.48.0/termide-0.48.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "601b61f70444de11a2debecb8747d5bb36c1f346a98929054ad6742db960cc4c"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.48.0/termide-0.48.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7c84d8ebb9b404a38a5c46af378cdf060071edef05a41b058f8c9b7611e807d3"
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
