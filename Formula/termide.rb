class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.9.1"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.9.1/termide-0.9.1-x86_64-apple-darwin.tar.gz"
      sha256 "34ab49ce7f9db07e72db472299c68cb987acdfe97fc9ef4ff1b535829d256d75"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.9.1/termide-0.9.1-aarch64-apple-darwin.tar.gz"
      sha256 "56f2c22772a85bd32f38c524105e016b436d0d25225003840cfeffab87f16661"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.9.1/termide-0.9.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0442c70ef204d87c0951c4af3a6de1051d7591e1d56da1be0df85f731f530d8d"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.9.1/termide-0.9.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f3c687735d975df923bf49c93a0305082200726178973fb6660150fc06d345d2"
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
