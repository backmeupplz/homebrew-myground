class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.15"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.15/myground-x86_64-apple-darwin"
      sha256 "daafb3ddd557f3f1a1a2168793f6d50aeb4b28878189d2e0326ada03007456cc"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.15/myground-aarch64-apple-darwin"
      sha256 "b43fc163e474e8a131bfb8439df179ee74e137926d9e1e38e7513fa09ac9b969"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.15/myground-x86_64-unknown-linux-gnu"
      sha256 "e8b46da68cdb2256e01a20042308214b2b141ba9ce69b7f6ff531d733a6f85ba"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.15/myground-aarch64-unknown-linux-gnu"
      sha256 "e9867b197799f306ec3c33e979ffd4dcc456de8fc62a875d865988f545f9cd1a"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
