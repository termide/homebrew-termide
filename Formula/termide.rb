class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.12.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.12.0/termide-0.12.0-x86_64-apple-darwin.tar.gz"
      sha256 "2e17ca10fc8d85722b6c2ab9a7f6cb6fb7687649b22f66f8aab5807a65aacbec"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.12.0/termide-0.12.0-aarch64-apple-darwin.tar.gz"
      sha256 "6af0586badc2f3436b402984df555ad1e1d311ac00e40d5d56aeded048d6008b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.12.0/termide-0.12.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "94bb73be299db1d410d8d242243009a394a36594513c51ec6d3e831723141a4d"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.12.0/termide-0.12.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bda59daaa6e8ddef8199133b2039ce138a59c8fdd8bc146ae79e4df31ff734e4"
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
