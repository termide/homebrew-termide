class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.14.1"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.14.1/termide-0.14.1-x86_64-apple-darwin.tar.gz"
      sha256 "92ebbd9e185d4c922d3915ac822c1cedbb7182ab7d293d3f8772abfffa8d7e2b"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.14.1/termide-0.14.1-aarch64-apple-darwin.tar.gz"
      sha256 "5b69bccdb27e0e60400de7099bf736fa0c360a968731bfbbee4833b2b8a95f8e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.14.1/termide-0.14.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a746c025748b8b8bec7b673ec7f8257b7e9b00df81f8a4d8187665a76ff713b2"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.14.1/termide-0.14.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b9c870c9e021bd1a3563a7486430ce6bdfbbb77c67113599f407f300cc232cb6"
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
