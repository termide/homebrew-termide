class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.11.2"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.11.2/termide-0.11.2-x86_64-apple-darwin.tar.gz"
      sha256 "87da74b16c702141d43229a293046592b78377e07eff3bcf67252f7256804e12"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.11.2/termide-0.11.2-aarch64-apple-darwin.tar.gz"
      sha256 "153cb13fbbdd14ca2218fa8ec55c92b8ffeca07d767994a6e6432e5c1e8c0e3e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.11.2/termide-0.11.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "69964418b079701416e81940eb121ad1b5fd3fd8d815507fd21383e9a7c70439"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.11.2/termide-0.11.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4ffcfbcad3e62bc85aec9b4ccd03c57857169b6832f7d071bfc4cdd40533edb8"
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
