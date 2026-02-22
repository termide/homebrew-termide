class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.12.6"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.12.6/termide-0.12.6-x86_64-apple-darwin.tar.gz"
      sha256 "9ab7b9dc9aab500475c7434aa2bb9afb9cccc99fb351302f0e3e29baf6b7ae3b"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.12.6/termide-0.12.6-aarch64-apple-darwin.tar.gz"
      sha256 "027036d5496fb9389f6560737fc7c28257ff71754816bc3746f9e1ddd0b699fe"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.12.6/termide-0.12.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "26b10400e3b80e744181b89946212e0ce465f81d436d4e13be13bb5e904089ba"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.12.6/termide-0.12.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a612eb66a6497896228ce7fe735fccd4c89812abd979d6acf60a6249866cb04f"
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
