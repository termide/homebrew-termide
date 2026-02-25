class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.14.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.14.0/termide-0.14.0-x86_64-apple-darwin.tar.gz"
      sha256 "4bd3724f13e2b54f93632fe84b9c01f4c153bc1e43aba29c207de96add9e71cf"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.14.0/termide-0.14.0-aarch64-apple-darwin.tar.gz"
      sha256 "f6caf94f16dfc94baf528201a9a3ddb1866ed25d3a187b8e69b16addb07b5274"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.14.0/termide-0.14.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e90c96c206ecca266052165671ec87846bacd7a1d8c99d6929fe8a131f60e9f4"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.14.0/termide-0.14.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1e070a7a31c08223d86d9d61928fd49fe2691fdea3b06f72d4df6dd84dba2c31"
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
