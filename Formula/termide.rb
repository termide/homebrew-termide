class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.8.6"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.8.6/termide-0.8.6-x86_64-apple-darwin.tar.gz"
      sha256 "c0d3cd3c127e56aa433c8ea1ade451c785880de6ef927e3833ffebef7d19a9f0"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.8.6/termide-0.8.6-aarch64-apple-darwin.tar.gz"
      sha256 "4599934e91cfd8db14286cfc0784308540d6d0f2b59106c38d3730cd8b75bf59"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.8.6/termide-0.8.6-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5fd3bf1caeb50bd46374fd6b552cad466f6136cde25acf17c7fc4a56bb208bca"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.8.6/termide-0.8.6-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0d7b55644f3a918d5c7501142aa1ec69bbc6eddadcc5697140311bd3532afea5"
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
