class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.17.4"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.17.4/termide-0.17.4-x86_64-apple-darwin.tar.gz"
      sha256 "fdc8d130f9c50dbe9fb072a61388279b9ca1a8d27b6d8585c81a04d500dac8c0"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.17.4/termide-0.17.4-aarch64-apple-darwin.tar.gz"
      sha256 "a276725f8cb14faff5fc10039a153b7275d0f26256f2d3e0f1727ec0090c80ec"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.17.4/termide-0.17.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "792ddfd8f8ea64c95c4db89018ecb37000d86bf4abf6e3b1940e8f49bf6d2aed"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.17.4/termide-0.17.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7897ce443722af9d220312bbd3f2a65f8743d4bc8a459288b3ae306a15e40aeb"
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
