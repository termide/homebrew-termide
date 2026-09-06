class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.32.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.32.0/termide-0.32.0-x86_64-apple-darwin.tar.gz"
      sha256 "33a2fe15bc7cb58841c226dbc50533724956498298a962c2fff37dab89a05d58"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.32.0/termide-0.32.0-aarch64-apple-darwin.tar.gz"
      sha256 "54bf6ea97e8ea9c3bdcda73a49a5ee493404bebf0e33c3b0ad74f097e03435f6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.32.0/termide-0.32.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2469c425bf663a008bf3f9cba76ee523a8285395842bf8183561eb1ca89cbe88"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.32.0/termide-0.32.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f7eb3a81e78d57a786865265541af81d967272e821742c060e3b5f2148c225c9"
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
