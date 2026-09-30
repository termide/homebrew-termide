class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.37.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.37.0/termide-0.37.0-x86_64-apple-darwin.tar.gz"
      sha256 "e796e7bc7d431b344324ac4f6a4c6d400833e9731121ac5b219af1534064f641"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.37.0/termide-0.37.0-aarch64-apple-darwin.tar.gz"
      sha256 "e6a9918b284bb581ec39a348aeca929245c4880145758960d7c671ff42060b32"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.37.0/termide-0.37.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "99c0976bc65f95b9100247e56bc1d84fc481489e51f060ebd16c0fb709268e91"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.37.0/termide-0.37.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a77dfbc47576e7567b940a41d228acfa0b52701306ae311db4f19204f71250a7"
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
