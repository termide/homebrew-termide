class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.22.1"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.22.1/termide-0.22.1-x86_64-apple-darwin.tar.gz"
      sha256 "9f6ffffc99259252d9be0fce897dd87f16004d750919a57b4ee2a81796c79fcf"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.22.1/termide-0.22.1-aarch64-apple-darwin.tar.gz"
      sha256 "8eecac28876bf4b79701ad35db4243f88fd81a6b7cd80b6eae8bd953a38cb3af"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.22.1/termide-0.22.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "397db9f6462dfbc4bf8aa2d123fcb096f871f2e4bd0398fd87270444459e6a21"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.22.1/termide-0.22.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a93dbb99c6b9728bb74637a215bfba56afda0de1cb6de0c1507de46d92c03d4e"
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
