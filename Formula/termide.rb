class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.40.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.40.0/termide-0.40.0-x86_64-apple-darwin.tar.gz"
      sha256 "033e5caa5027aa3fcdfe3b9a7484a06d921d701f9ab572ce11c02ff6acce55e3"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.40.0/termide-0.40.0-aarch64-apple-darwin.tar.gz"
      sha256 "99c6bf0d65f90437198ba989af1565c550ec202e5df98fbace58fe57bcf5d609"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.40.0/termide-0.40.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "16789c2251f98623105413dbd3afd7a1c426821a01730f91dc061edda234547e"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.40.0/termide-0.40.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f099796b7d70209c082653b04b0ca825306577c55fe9bf58e62421250b4e2110"
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
