class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.59"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.59/myground-x86_64-apple-darwin"
      sha256 "e36f253ae8520fe288138e82af147dbf217d16e9b5587981556c03ff6f82839f"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.59/myground-aarch64-apple-darwin"
      sha256 "8848fe1728641a62ecb7295e0150ee7298c46afd93e530a54ee30608dc788c68"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.59/myground-x86_64-unknown-linux-gnu"
      sha256 "e170ac2ece880d08cc12105dec005b132ce6ec65fcfbb0ad813a663819f3271b"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.59/myground-aarch64-unknown-linux-gnu"
      sha256 "84b476737d2398603ca62cc399a1164a02d30760b083a58fc2ba12de56c1aae3"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
