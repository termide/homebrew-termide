class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.16.1"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.16.1/termide-0.16.1-x86_64-apple-darwin.tar.gz"
      sha256 "a49a21fb88c422d18290d767ba18d5ce2ac7e63ae975c1c1324586dc18d2c234"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.16.1/termide-0.16.1-aarch64-apple-darwin.tar.gz"
      sha256 "ddb1ed36fcb27e425b4403954500315f0398271d8871e9b715d3b1e1747499ae"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.16.1/termide-0.16.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "018f92a8c8318a26d379c002c5946a36ce00d447d470e9e19c7434ef25caebd3"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.16.1/termide-0.16.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dd4b40b6e69453adf0da645622af863c1affd0b304460ec35f258b1b8391f5d7"
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
