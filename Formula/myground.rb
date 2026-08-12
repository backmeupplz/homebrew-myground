class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.98"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.98/myground-x86_64-apple-darwin"
      sha256 "13a094f96f78af184fdc833b9ccd12e3dd8c6eb46ba26610e61f0a1921687d6b"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.98/myground-aarch64-apple-darwin"
      sha256 "e448a0caf83b6728c84b1078b2ae8fd62322d13e34883b8e9673699f94cd723d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.98/myground-x86_64-unknown-linux-gnu"
      sha256 "e759299b66d0f39efde29eeaa3359ce615cc5f379722530e7e71784a9a06f26f"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.98/myground-aarch64-unknown-linux-gnu"
      sha256 "8c9bd816682f3141bc408701f1aa209534abbb07a1ee78a37a41b65beb097747"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
