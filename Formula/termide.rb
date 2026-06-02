class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.23.7"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.23.7/termide-0.23.7-x86_64-apple-darwin.tar.gz"
      sha256 "3e2efaa626e77c6ad5bcf104717ac90af22b7554df2532460c4de4fb1f647494"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.23.7/termide-0.23.7-aarch64-apple-darwin.tar.gz"
      sha256 "a0b50c2ec539d17976e84a582d8382418679a099189571f26da9db583fd4d559"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.23.7/termide-0.23.7-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2cfc4c94ac732ed42fcff0bb32dae05e210ed14c413f27a9dec6e99f5a11dfd7"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.23.7/termide-0.23.7-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6c0783a3252c1f3fba24939adf8100daa32560c153b086daecae96c6340d1a05"
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
