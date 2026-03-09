class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.55"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.55/myground-x86_64-apple-darwin"
      sha256 "f275a63225d35e1548de10de06677854e8086fc47e0605599c97f655f10dbf95"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.55/myground-aarch64-apple-darwin"
      sha256 "c78407c89df8b6d34ca336c2078f1cdcdc9d918a31ad65cb3f4317f88ca3cdae"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.55/myground-x86_64-unknown-linux-gnu"
      sha256 "854701459f3f5d695dbf402c590e3859da2f7d692cde196f377a04826c5d1ea2"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.55/myground-aarch64-unknown-linux-gnu"
      sha256 "239be84ba7199b8dec197902f3e39ee662587bf821b18b17be3a4654c5424df7"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
