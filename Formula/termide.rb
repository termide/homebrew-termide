class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.29.1"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.29.1/termide-0.29.1-x86_64-apple-darwin.tar.gz"
      sha256 "523654ecfb4c3878ca7a368473f86d9cbf205d4a6dc41ec470d263506326d20e"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.29.1/termide-0.29.1-aarch64-apple-darwin.tar.gz"
      sha256 "347ea372db5d1a2c79c4a85b84d1adf0b25632b70844e55c514da11f8a618ed8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.29.1/termide-0.29.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8eab9d5619ff7bbd570cf275fd5880f198ecc59d20c4c053a959f1d2a8af008f"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.29.1/termide-0.29.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "94ce865b9bcfe6b22deec0831c2e6bce86338bb9c8ca6ecdb19aaa8dda1e942c"
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
