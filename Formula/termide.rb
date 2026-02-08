class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.12.1"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.12.1/termide-0.12.1-x86_64-apple-darwin.tar.gz"
      sha256 "edb7affb4af67a06787ebdd79ea4860154f1ccc960f5921c4486967889d0119c"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.12.1/termide-0.12.1-aarch64-apple-darwin.tar.gz"
      sha256 "5a72e756307537a39ae36eb956d64c7209fcbf08a49cd9d5d99f5611c86a21d6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.12.1/termide-0.12.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ff6d9d1e9ede8d0ca3505308e1e803f4d9c505746366d290aa3824d93b0b45b9"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.12.1/termide-0.12.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bffcc17464adaaa88846d43665d7fe46122a01fa3347ec5a111c6f5ae67284fa"
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
