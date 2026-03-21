class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.17.1"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.17.1/termide-0.17.1-x86_64-apple-darwin.tar.gz"
      sha256 "bc90d5a49b3f9bba0ca1433d7b133d13d1eed3cebbba19af767d82d52644b29e"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.17.1/termide-0.17.1-aarch64-apple-darwin.tar.gz"
      sha256 "55816eeda01ef102170ee43ab94888198f326fe2da42a84d8e6608e6ab273ec1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.17.1/termide-0.17.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1eb9d8801d4dbaee09b320ebfe1d799d5755fc10c604f4deaa5e8118860f6051"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.17.1/termide-0.17.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e8d7cbb38b36d9bdcf8917d5ff422eb84b8a2b4c2622ff759dc39dd989f7bd4e"
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
