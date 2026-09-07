class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.33.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.33.0/termide-0.33.0-x86_64-apple-darwin.tar.gz"
      sha256 "6d6b2a3f1cda195539a2db5320e9a0582fe79110a9e82668551a49a2c9ecb4d4"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.33.0/termide-0.33.0-aarch64-apple-darwin.tar.gz"
      sha256 "66d673ad63be54aecccdc50283d4e830e3d67d6ff2d3bf1a73175a6ab2d71df0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.33.0/termide-0.33.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1c1a7b83d7bf1594a57fba518de30b444bd8066a4a64b787c8d87e1d3ed5657e"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.33.0/termide-0.33.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "01b0edbff3ed2bfd7a135bb8ef52e574990e7158c409b78bdbacded6e32e6ec8"
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
