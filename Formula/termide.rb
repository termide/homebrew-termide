class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.8.5"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.8.5/termide-0.8.5-x86_64-apple-darwin.tar.gz"
      sha256 "e7ca8641f3c305ba87ad9f5462bbb4c8317ace81f63f5b067f763d4b64e346f6"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.8.5/termide-0.8.5-aarch64-apple-darwin.tar.gz"
      sha256 "7c46c2caef02bb61c3eaf84f2667a4a89d0f76b0c2c6bbfa6ff1c5318346726b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.8.5/termide-0.8.5-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5bcd61b8f8ce7aabf61b4cbe813f1395f498f6bd14b3b2177611be8780d90087"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.8.5/termide-0.8.5-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f1d43748928c5297a4f45246ce33e97ae60f9f087f56b5da6bfab1db2a857deb"
    end
  end

  def install
    bin.install "termide"

    # Install help files
    (share/"termide/help").install "help/en.txt"
    (share/"termide/help").install "help/ru.txt"

    # Install documentation
    doc.install "README.md"
    doc.install "LICENSE"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/termide --version")
  end
end
