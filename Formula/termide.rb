class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.31.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.31.0/termide-0.31.0-x86_64-apple-darwin.tar.gz"
      sha256 "d2c3004ae8c48439b390c14e9aba618287e939fef142dd9669f5c0d469ab05c3"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.31.0/termide-0.31.0-aarch64-apple-darwin.tar.gz"
      sha256 "4e70a3e8820a022973072774343709edcc03df8de8442d081667764830d4f0d7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.31.0/termide-0.31.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "928edfce5299b8f0d1de42bfb1bcd67ec3b8aee6a782b2fa507c78daf9cc64aa"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.31.0/termide-0.31.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d96acd714eca1676f4e52c279439225bd80f36b8294990b647e9c59a9f162933"
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
