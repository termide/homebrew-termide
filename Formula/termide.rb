class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.18.1"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.18.1/termide-0.18.1-x86_64-apple-darwin.tar.gz"
      sha256 "ea2e2aa294397af57cf06a9031ec1db6fb130e42788138d9110b749e26566292"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.18.1/termide-0.18.1-aarch64-apple-darwin.tar.gz"
      sha256 "dc5342cbfee1bdcf706ff3ee023ee4bee1622924324692af95ee6ce9aba295d3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.18.1/termide-0.18.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "be3b3fa555d74d7eedb804a86fe5292992ed7e3fbb4d9620ca124447e95ec3a8"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.18.1/termide-0.18.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "74702f96e3c78c1186091e93c866aafda0cb37a4288298c264ec8becc5063dc1"
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
