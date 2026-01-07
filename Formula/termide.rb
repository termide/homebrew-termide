class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.8.4"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.8.4/termide-0.8.4-x86_64-apple-darwin.tar.gz"
      sha256 "09a41f6e19b3c6bdf523defa8d96316b4ce43d593516c4fdf92e49b40e2e237c"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.8.4/termide-0.8.4-aarch64-apple-darwin.tar.gz"
      sha256 "c662e1372fa2256510811c975f9dbea3e371b5fae2dee5a3a7f2ea32d40f1f76"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.8.4/termide-0.8.4-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c334cb312dc682e5a231bf556a8b6a7e6d87e88b48dd1a682be16ba28031d413"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.8.4/termide-0.8.4-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fc4ce7a809dc8228d577f471f6d77149f1f6bab10564f8fa3c37f2bfd4688901"
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
