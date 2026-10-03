class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.103"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.103/myground-x86_64-apple-darwin"
      sha256 "cf069fee083b0c749cabf554c0ac19489056dc8052a8fa1865e5e2f8846a6d75"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.103/myground-aarch64-apple-darwin"
      sha256 "be4164ab47a07932fd8baad9a396836cf864cf799c17b680a6c491be70d8c7d1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.103/myground-x86_64-unknown-linux-gnu"
      sha256 "87a7e103f577e1aafb3a15dc672b0210a5ef7ca9eb40d8a61d07d13d08a9eb2d"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.103/myground-aarch64-unknown-linux-gnu"
      sha256 "d47eab2f9413e2c2bcfab606fa9eec7c20244c12283853fc6f1a360d23836c15"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
