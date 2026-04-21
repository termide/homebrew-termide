class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.20.1"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.20.1/termide-0.20.1-x86_64-apple-darwin.tar.gz"
      sha256 "2c81edf9a047344ff5e2ebd7c3ec84534fe388a9f52583cca68194becb74644d"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.20.1/termide-0.20.1-aarch64-apple-darwin.tar.gz"
      sha256 "92f28fb9c0740933cb6b5d440b1fba5265b4c0363013d038575149f68e9152ee"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.20.1/termide-0.20.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8c59dc3037cc7e8f22edcab091aa2faabe23f1532210e0be0683271d30e2ff5d"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.20.1/termide-0.20.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0291dc497c84b7fe704eb74431f84357c88402805f90714632ee62a3d5ffa3a4"
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
