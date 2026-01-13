class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.8.8"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.8.8/termide-0.8.8-x86_64-apple-darwin.tar.gz"
      sha256 "8e1150292723dfe936890db6adf031fa19cbacbef3b224f98a52eb85deda2b87"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.8.8/termide-0.8.8-aarch64-apple-darwin.tar.gz"
      sha256 "07813c20a6f72cd4a483032453f331eebef24a29077b5c70b2be12a6a7bd2bab"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.8.8/termide-0.8.8-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c26c384cedf970d54590d4eb87f5932d70df332a55a4e488387d0019bb24edfb"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.8.8/termide-0.8.8-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bc8df2a80fb77f3a84428e596a50b91b8bb1d1b348512a6ece5bc27905c53177"
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
