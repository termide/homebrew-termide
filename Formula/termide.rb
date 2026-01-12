class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.8.7"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.8.7/termide-0.8.7-x86_64-apple-darwin.tar.gz"
      sha256 "8249b9c606a3631d1d3162183be2c245f7f4ee8dc406a8f8a8633b45733b915c"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.8.7/termide-0.8.7-aarch64-apple-darwin.tar.gz"
      sha256 "7f2913fc15556f303df072b1f5b3f6491d0f45eb14da51120c6e07dfa4b35962"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.8.7/termide-0.8.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "93abf62a511e57bd53ed55eaf25a49a5efebe65d8251bf1a44b050805ae76fe4"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.8.7/termide-0.8.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "68b492a58feb07a0192dab3f72f97bb61ab08a0f503b39fd5b654a9b74c9396f"
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
