class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.38.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.38.0/termide-0.38.0-x86_64-apple-darwin.tar.gz"
      sha256 "28e81c2dff876692a5fc4f1b9deae313c4001004ea36019b68cb9eee9bdf51b4"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.38.0/termide-0.38.0-aarch64-apple-darwin.tar.gz"
      sha256 "9a9df3cb6e3d5a4181ca29aefaa342cad5d81519caa72398bdae987a91425196"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.38.0/termide-0.38.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fbd992c5e221f2c40577c0f990d78fa93cbad51fbd9497407570702e7b5a6551"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.38.0/termide-0.38.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "683bdef8589bbe9b4b3cc8b4a4ab53c423c5d9e11cec625bd2a5b16c430c6580"
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
