class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.18.2"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.18.2/termide-0.18.2-x86_64-apple-darwin.tar.gz"
      sha256 "9ce28797dd2e95c446fdbef1ee6f4e14ee737cab3ead774afcc80eb3f8c74713"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.18.2/termide-0.18.2-aarch64-apple-darwin.tar.gz"
      sha256 "cf3f006133d9bc1bf8ead7d9f860c0ff6395184cde46991786f54b1f2e5d1d87"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.18.2/termide-0.18.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e32b6c0aa84a3069d9f45d952435db0ef976f9285a237f21c5d536ad4e5d7a16"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.18.2/termide-0.18.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "865272fdc361fce3ea7498472caeb33ad2c0e06cd4c42179783c002f024ad88c"
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
