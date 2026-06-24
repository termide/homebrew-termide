class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.27.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.27.0/termide-0.27.0-x86_64-apple-darwin.tar.gz"
      sha256 "9a1b875dc11e0d095d7c7ca67d6e81f03b9da3413b643bc4c978493f2126fbf5"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.27.0/termide-0.27.0-aarch64-apple-darwin.tar.gz"
      sha256 "eb8fecd572298abbecfaba52212f5f71c09132ba596107c484043a76d7c09476"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.27.0/termide-0.27.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "6e79411ec1b31f01b7d1a3dec36f6ff6e1e1d7e19cb01dccb34bb2ab567ffe68"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.27.0/termide-0.27.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "56aca8a0e14cd460cebd76901edb6ceb7b2215fa31eb85e70a8e23b9dfbc578c"
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
