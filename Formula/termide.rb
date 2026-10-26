class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.46.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.46.0/termide-0.46.0-x86_64-apple-darwin.tar.gz"
      sha256 "52d6f1ff4a74e42d058f48827df0de73e6e2b8f2016648b3d1466c088c3c060d"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.46.0/termide-0.46.0-aarch64-apple-darwin.tar.gz"
      sha256 "360b89afbc9863f437fc02ac44e87bb5605b7f3eb228d09650c1e8d1fcb7026c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.46.0/termide-0.46.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d9c80d8b5ce5c4eb3abb64ad5177788b2aa7267608df62d7de95a995169fdec8"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.46.0/termide-0.46.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "691fd87b02509c8a9e947e94110b6942ebf8a18b4dc4840a1021c9147f400162"
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
