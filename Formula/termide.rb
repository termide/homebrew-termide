class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.29.2"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.29.2/termide-0.29.2-x86_64-apple-darwin.tar.gz"
      sha256 "63f11d74307c33be71f41619da249950ffc906b39573e35dc135ab0b579a0d1e"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.29.2/termide-0.29.2-aarch64-apple-darwin.tar.gz"
      sha256 "20e745c967e6e61deae2ff31893a9dda58c31c65704ee19a086292c0b373ab2c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.29.2/termide-0.29.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ea18a1a5847cf2c07b9cd0fc3b17767b396835f43bf0e617fac16291b51bd461"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.29.2/termide-0.29.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "20560684960d8c7f27538d1fa4fa89ec8b22dad45e682cd0fdb821f42116147c"
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
