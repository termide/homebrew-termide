class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.35.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.35.0/termide-0.35.0-x86_64-apple-darwin.tar.gz"
      sha256 "39e8f3724ffd98b76ae8f5ebafe394a484a8568db2bc4ce256cbb4dc530d0e17"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.35.0/termide-0.35.0-aarch64-apple-darwin.tar.gz"
      sha256 "83835a532bc2d6e5daee3cd6ed11deea565c401474635fb6f2125bbcd5f61cbf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.35.0/termide-0.35.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b58c7b41500e134533a1ed0cf6221db29aa415740b5fd0cff0b7ebff40b9d73f"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.35.0/termide-0.35.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "62d26a8b0de9df0bb9ffbbaa94179548971fd8177f04fa0a17f25353f2d62ecf"
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
