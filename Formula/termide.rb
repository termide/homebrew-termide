class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.49.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.49.0/termide-0.49.0-x86_64-apple-darwin.tar.gz"
      sha256 "0a95c2d61d0bc9dec3fdf9e15d7940329d8b56b36e34ff7233be651c8e8d0c32"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.49.0/termide-0.49.0-aarch64-apple-darwin.tar.gz"
      sha256 "f73d55d33e62e22fb1b8080fd3c9cfd0e833b40e28a279321f3cd1258ce37f2a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.49.0/termide-0.49.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0776050e77cfaea131c35081f6c6b894ae479526249ee3b42470e0f4717c337a"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.49.0/termide-0.49.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9e593fe342ac381f9128aefa5be24bc94091e2898f12b7985a93480d86f2c826"
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
