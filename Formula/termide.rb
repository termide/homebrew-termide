class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.22.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.22.0/termide-0.22.0-x86_64-apple-darwin.tar.gz"
      sha256 "0b447cc641dda2704382df958394b247a079def8ca433db5b7d1501d8d25593e"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.22.0/termide-0.22.0-aarch64-apple-darwin.tar.gz"
      sha256 "e7f2d5ed8758f4d1d29a111403aba3227b6a93ceb18262db586c4cc93a88918b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.22.0/termide-0.22.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "de80ab6735fae0dc7bf675556c537f9609664434125b0afc69c78386c264348f"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.22.0/termide-0.22.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c7c49f5d5aa12840ac694b6d92e3cddd14e84f82b83eb7dcc2bedec7d9d2e3e1"
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
