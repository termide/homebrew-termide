class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.11.3"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.11.3/termide-0.11.3-x86_64-apple-darwin.tar.gz"
      sha256 "5837a08322d961e55bcd79e1ed4cb4dccab1eb5eeb66fcabe831a15168a9eff5"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.11.3/termide-0.11.3-aarch64-apple-darwin.tar.gz"
      sha256 "c0bc6baf9463e2d042ae6b5951acfac70399677316b9ee0f8022a62a4f0dc43f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.11.3/termide-0.11.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "92eb608d2eb638914950092a2048a2cedcb11ce48531952155591a84136c4eee"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.11.3/termide-0.11.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "18ef2e02b39ff61361c52a65058464b4e8accd5e6e5a664826c8cb60eaeb5449"
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
