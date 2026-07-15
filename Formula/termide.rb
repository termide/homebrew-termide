class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.29.3"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.29.3/termide-0.29.3-x86_64-apple-darwin.tar.gz"
      sha256 "4a6e2b985a665364e39808d15b3b9d8e7872902512c7c70bd29232ed365d1c0d"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.29.3/termide-0.29.3-aarch64-apple-darwin.tar.gz"
      sha256 "71ebb0414c3c17359d43c9b865b6a972c78085de87de249ed40bb2b1e80697a5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.29.3/termide-0.29.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "87efabafaf882745629d69eefbdd6de1ab6ee65a2de8f845b7f48b98d7de8a97"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.29.3/termide-0.29.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "eae572ae59940b71f355aec1e390d74bd4ca803b428c9f8789b6e6a2eba7d77f"
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
