class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.19.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.19.0/termide-0.19.0-x86_64-apple-darwin.tar.gz"
      sha256 "47a5c0579b14cbe04fc6a6e517fa43023c5f2fb73a00fdd4eecfa71f99250e8b"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.19.0/termide-0.19.0-aarch64-apple-darwin.tar.gz"
      sha256 "4f90aa5bf23213028d2cefb3379381956eecc6da12cf4e6c5d3fb5f9ed491c2d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.19.0/termide-0.19.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "96f73927a01bfd058a43eba68474706984aa664a7b57520a0c3afe06cf35bd0f"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.19.0/termide-0.19.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b8eac19efa8438ee70eb603caffa3bcf0535f5a6f4ce76b4ff53b6ce824bd338"
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
