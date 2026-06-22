class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.26.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.26.0/termide-0.26.0-x86_64-apple-darwin.tar.gz"
      sha256 "b7361c33d161a1375f1c907403a396771c52d41cf9045c11f708f5fbc1badde8"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.26.0/termide-0.26.0-aarch64-apple-darwin.tar.gz"
      sha256 "dfe3ea2e7438745781d2f7da24bd05d9777700374312ae79879255b657d98a9e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.26.0/termide-0.26.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6bd2d7e41252e9d7e810abdd45a292ae63cbc2ed711334af4fe40b4d40844b10"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.26.0/termide-0.26.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d87688d75840a7232939e368055000748b531ef80d9a0d6a1296001b2ac5e9c5"
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
