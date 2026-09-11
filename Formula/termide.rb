class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.34.1"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.34.1/termide-0.34.1-x86_64-apple-darwin.tar.gz"
      sha256 "4b237b809f767c367acd3f6a3debae96c902b8e87973db763fe04ad4569e9542"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.34.1/termide-0.34.1-aarch64-apple-darwin.tar.gz"
      sha256 "f529b02c19b36187c0d98dedf8ddbd238eca52f7581622b776edef310ab1f3ef"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.34.1/termide-0.34.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6d769611d7132acf3c59cdcb54a41c93c2d9fb50b324acc55f164dfce833a51a"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.34.1/termide-0.34.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bf02da2664a9ced8e8d645a47fcfabb533880eec351bb5b1ec410b733dba2115"
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
