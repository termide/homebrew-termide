class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.23.8"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.23.8/termide-0.23.8-x86_64-apple-darwin.tar.gz"
      sha256 "62056add25469879ed63c195134fbfb292279f3ac19881c25622818b05076273"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.23.8/termide-0.23.8-aarch64-apple-darwin.tar.gz"
      sha256 "28927751f1fd56a9f3f9d5afef05dfd51d8f3690429af596f21d6851bd19eaac"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.23.8/termide-0.23.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "99dd2f20cbb13fbe4dee3ec48a1f56b2b69383b6ad5981ac3290e457346d16aa"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.23.8/termide-0.23.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4318468233529d374da3f30d0304b5055bb2da7f95be6fdff4d18f90d3dd31fd"
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
