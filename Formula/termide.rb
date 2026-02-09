class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.12.3"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.12.3/termide-0.12.3-x86_64-apple-darwin.tar.gz"
      sha256 "2d85cb6ec82d9868d49642ff0bc63f8e24082cceff9085db4ec3bd15c7a41781"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.12.3/termide-0.12.3-aarch64-apple-darwin.tar.gz"
      sha256 "68965df2bc004673da6012e8e682f6f068e294032703b92a8082be609a506f4f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.12.3/termide-0.12.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "92fc701f8eabf2c92f6baccee5ba542798fba6051daced725fc40faaeb1a0806"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.12.3/termide-0.12.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4932c39b399a5a37e404ce0cc9590dc4753e2e8acd9a10e6e791c25074923f21"
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
