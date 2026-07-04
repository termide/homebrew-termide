class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.29.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.29.0/termide-0.29.0-x86_64-apple-darwin.tar.gz"
      sha256 "8d3eaa8a0186ea2bedd63ad0fa159ab351c0396b988bc1bddf46ec888ab9323d"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.29.0/termide-0.29.0-aarch64-apple-darwin.tar.gz"
      sha256 "b5f41b962b166cda40c49f934ac5e49c7721b068db09c86b99efb9606c403f87"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.29.0/termide-0.29.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5cc4b2da17ac99bb1934614ab9735a41307e1e37e768ce4ef34542579d54e5dc"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.29.0/termide-0.29.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b1e101370e26dcb46e7eabd5269ac96c45e81cf3de6eb67d6859ca647393020b"
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
