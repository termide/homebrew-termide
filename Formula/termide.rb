class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.9.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.9.0/termide-0.9.0-x86_64-apple-darwin.tar.gz"
      sha256 "b978c426fec797cc74e5757d794d724a792f273e9d946755e412f60ccaaedc6b"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.9.0/termide-0.9.0-aarch64-apple-darwin.tar.gz"
      sha256 "aa15f2e9938ad1f20e56e7996f70d1abe5db59de32e86c30faadfdaae44a12b9"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.9.0/termide-0.9.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1bc63966a51fb6dc47d5eb76de45e6dc032629a6aee57ceccc46c73b693829a6"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.9.0/termide-0.9.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8c8dc2409edae4ee6492a093b1917b943f73e653214456465f5f80d44086d8cf"
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
