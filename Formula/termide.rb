class Termide < Formula
  desc "Cross-platform terminal IDE, file manager and virtual terminal"
  homepage "https://github.com/termide/termide"
  version "0.36.0"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  on_macos do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.36.0/termide-0.36.0-x86_64-apple-darwin.tar.gz"
      sha256 "8896dfec7000a4cd2d47f9b7cc8fafa0a2d42f9003d22429a98f0caf50907775"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.36.0/termide-0.36.0-aarch64-apple-darwin.tar.gz"
      sha256 "3f770dca58dbb51551b994e3aad25d50481143cdbd5f090a10b1493f34d24928"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/termide/termide/releases/download/0.36.0/termide-0.36.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "38bf4d11a535460ef6983f6a202136b63446f3e5e65c2bd08b5f65b5cd016e51"
    end

    on_arm do
      url "https://github.com/termide/termide/releases/download/0.36.0/termide-0.36.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "66141110ba05628d2c0db51c841f924d6b2bce33ee936c5a904590c83c898ba5"
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
