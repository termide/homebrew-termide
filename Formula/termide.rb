class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.45.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.45.0/termide-0.45.0-x86_64-apple-darwin.tar.gz"
      sha256 "35218ec1efbe4678880104f7341c3abc6046350a70d454d9193b56cbfc5a5716"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.45.0/termide-0.45.0-aarch64-apple-darwin.tar.gz"
      sha256 "e33e1540ce2f30a4d543e76a26d0b2c1062e2b24e51a8abba3afcbba838197b5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.45.0/termide-0.45.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "96caafb40a23e8c40ada46248f73ffb572ecf1796085a154f1f5f0246ceefdee"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.45.0/termide-0.45.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "49cfc5b1ef19a41f07693b55ba19d9ea3b009e4cdeeb5546d5cee9505cb21f37"
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
