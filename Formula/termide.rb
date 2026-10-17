class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.43.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.43.0/termide-0.43.0-x86_64-apple-darwin.tar.gz"
      sha256 "8189fdb7571e95c21ea094bbb762adcf0137879ff72f3cba0831439be2cb6f0f"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.43.0/termide-0.43.0-aarch64-apple-darwin.tar.gz"
      sha256 "b847bc5619796c26817425d066c12f6cb3d2d8b463736cd9db55780fa3363807"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.43.0/termide-0.43.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a44f67b7e4cf694a43c78cafb2e4d84be1ee8df7e4019d259f8124e41ba7edad"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.43.0/termide-0.43.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8308a1ca38ff9c1e6f15f256740867c4511e7ffd8f57d40db8f6527cec9f70ca"
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
