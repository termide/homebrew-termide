class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.8.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.8.4/termide-0.8.4-x86_64-apple-darwin.tar.gz"
      sha256 "f53c72c84da8d9a2491fbf5d44962444bdfaa92827f4114e183a5383b84c6209"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.8.4/termide-0.8.4-aarch64-apple-darwin.tar.gz"
      sha256 "ea33c8ad18bceb8ea2a277bf217eacf8a145e597eff8d684b81284735c8d350b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.8.4/termide-0.8.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9949a9013ed621f4955fa2fe8a0932bbd553650dc4efd20d51d000e32ff630c3"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.8.4/termide-0.8.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e3eed3af0c0e65d6f60af5a9c6226e5b5a0097250e67ea628f6a7f2e597283cc"
    end
  end

  def install
    bin.install "termide"

    # Install help files
    (share/"termide/help").install "help/en.txt"
    (share/"termide/help").install "help/ru.txt"

    # Install documentation
    doc.install "README.md"
    doc.install "LICENSE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/termide --version")
  end
end
