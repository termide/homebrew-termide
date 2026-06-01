class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.23.3"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.23.3/termide-0.23.3-x86_64-apple-darwin.tar.gz"
      sha256 "95b3245ffb2112ba4be080075c5716cac60990ef11cd841140fec2825b81825c"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.23.3/termide-0.23.3-aarch64-apple-darwin.tar.gz"
      sha256 "679714dcbb579c0944c8ee4109afa513d8b2cafbf1432322b6ae0c0ae85578e8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.23.3/termide-0.23.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "138ccd4025a57ae2b7a21a2342a3022642f64536ead42d6adfc4619cb32bf4b3"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.23.3/termide-0.23.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7fc0ba91ae74e215fbd65d466bc014729ad37220388afca8bbf1d689f97810ae"
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
