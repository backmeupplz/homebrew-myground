class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.71"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.71/myground-x86_64-apple-darwin"
      sha256 "1e2da08fdd9795ac390e138eb5e4b25f6d9f7dd4855981565f1e139991c934f1"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.71/myground-aarch64-apple-darwin"
      sha256 "49122673969753646f885f488d454838d2ac3ffd87d16c2f874f58055a163583"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.71/myground-x86_64-unknown-linux-gnu"
      sha256 "0ebdc836b53084d65aa3e095375931f7708dccbabe0d4ae66f93c3ebb66c7aad"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.71/myground-aarch64-unknown-linux-gnu"
      sha256 "d3b46d2829ca5d87e43a50e47c8afae8aa2c30ad588f119f3335218681f77af9"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
