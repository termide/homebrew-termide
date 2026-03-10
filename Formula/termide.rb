class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.15.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.15.0/termide-0.15.0-x86_64-apple-darwin.tar.gz"
      sha256 "02ffd4195990ae1a7efa7204977656fe7c76ff5859bc6a477555a0ea1714a200"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.15.0/termide-0.15.0-aarch64-apple-darwin.tar.gz"
      sha256 "f25de885ca1f17c4b4431552b6ffc5398a7924dbddc6d0377ecca7806e1f4d75"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.15.0/termide-0.15.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "68647f19e6139df385493ed20bba5b218f7bac09fbded8b56436b0dd18314a44"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.15.0/termide-0.15.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9922abd72b4049931969137b818c25f7f5cd6b97d8fd1af582fffa56f18e2a2c"
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
