class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.76"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.76/myground-x86_64-apple-darwin"
      sha256 "0c86182eaa5e92a7d3451da2148585d81435a9a5c6f2be312f5bc53e0267a7a3"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.76/myground-aarch64-apple-darwin"
      sha256 "c7f378ae82c0de09c9c1ab8a4f516e8c1bf289cbb7f030947dc18fec94288544"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.76/myground-x86_64-unknown-linux-gnu"
      sha256 "f55f9e7a2e3cfc1e6b818f3740f1c39fb654534da20f8a2512bf65128e020665"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.76/myground-aarch64-unknown-linux-gnu"
      sha256 "4f9f9f1fff7757ba839a88e845a2197b50e35a74bf1f178473de6d241732217d"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
