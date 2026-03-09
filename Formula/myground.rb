class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.61"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.61/myground-x86_64-apple-darwin"
      sha256 "ff88d45d23adc973eb1ac9564995372744ccc6f7b9b02a9822fb92504ac457f8"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.61/myground-aarch64-apple-darwin"
      sha256 "62e0b95023738717103b4f2b4fe2d3785968aa3c9c8f0565a6a3c144b99dbff7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.61/myground-x86_64-unknown-linux-gnu"
      sha256 "3765ba9f5d8c821f21f9f6d4d3e8ce607228072d54834ce61d6f16fc75e61673"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.61/myground-aarch64-unknown-linux-gnu"
      sha256 "e98df4b4519d2cecab102bccedfdc4d7310c718af7a3d00ce40c1e08ff7f33d1"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
