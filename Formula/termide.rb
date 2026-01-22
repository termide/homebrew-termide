class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.10.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.10.0/termide-0.10.0-x86_64-apple-darwin.tar.gz"
      sha256 "033215b0ddacb7605b0a82e839890006180d600e7286929a1fdb9faaab9ace8b"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.10.0/termide-0.10.0-aarch64-apple-darwin.tar.gz"
      sha256 "307005e3e387233e15fdf319f03b8c493b8ae27d6e98ec1001354dfcf5632806"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.10.0/termide-0.10.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "80878290737e1ca4c33e21c3c2ffdbb167de8b3faea92c4a7f8d834f15663c2a"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.10.0/termide-0.10.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e5343d3994bf0d00d526f9f77fb3492fed6c423f8daf842cedf87b8bad031e49"
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
