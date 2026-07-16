class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.29.4"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.29.4/termide-0.29.4-x86_64-apple-darwin.tar.gz"
      sha256 "a1524a4e8e8ed6ef7ea01327dcfebffed507eafbfe35586e087607f9608eaee2"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.29.4/termide-0.29.4-aarch64-apple-darwin.tar.gz"
      sha256 "8ecf27555dbd8c5a6a8007e23acbbfa2e59c227b0bf9d2540abd487f653ca3e7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.29.4/termide-0.29.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "524c22b8794a6bae1e133933b75fd5ca8c52e563c7c0985b7817dc1b3e7440f3"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.29.4/termide-0.29.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "208f1bde58abc594cb3e2e4a5c6306c6203e8b875a1e3ebc767cd16c378dec9b"
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
