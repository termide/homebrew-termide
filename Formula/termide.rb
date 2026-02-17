class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.12.4"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.12.4/termide-0.12.4-x86_64-apple-darwin.tar.gz"
      sha256 "f7677518f76ce7468549a65b8ac10bd85903f7ba23c4369d6782804c3d62ec68"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.12.4/termide-0.12.4-aarch64-apple-darwin.tar.gz"
      sha256 "2e417d45043768667bf06aa3946bca3a90f2895a11de2ca1d56b8cafabefdced"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.12.4/termide-0.12.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "240c3529b4e46e6d33325c7f62d9212aa987361464133241d698e28f495e628e"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.12.4/termide-0.12.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c35bc67b1046478cfb46c5d280c54946bb0e725239c0067810032de1a521e4b2"
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
