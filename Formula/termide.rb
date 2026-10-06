class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.39.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.39.0/termide-0.39.0-x86_64-apple-darwin.tar.gz"
      sha256 "c43e91a8fa22b30b1424d6990a9eea7a7da8c913f8f4306635495eccb526e4d9"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.39.0/termide-0.39.0-aarch64-apple-darwin.tar.gz"
      sha256 "f35f7d3b6f5497e4bfa215eaba769c8bb3afa67ccb3e8615a3ac6712af6d1c21"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.39.0/termide-0.39.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "924409c1251a93c699b9e96f74be3bb3b522ff56828de1eaed3af722dfbedd98"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.39.0/termide-0.39.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e7a21ebff9f26fa06ba044bf3bb709121714b204008bf4d7189ffc6605ab2ed5"
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
