class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.92"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.92/myground-x86_64-apple-darwin"
      sha256 "1196a0af086c2715a54eaec61213193bdd789d5d36da2c7cf0a48b2d5fc29642"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.92/myground-aarch64-apple-darwin"
      sha256 "2bbdbf6621e2cf1f8573cea8bf951aa283e1d51591aa6f16cfcd7bebb7a12045"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.92/myground-x86_64-unknown-linux-gnu"
      sha256 "cbb6256342bd7051f213cf051ee921069a9a39990fcd6e60492deb9cb5424fca"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.92/myground-aarch64-unknown-linux-gnu"
      sha256 "ba935d9fb0bc1f9636fe0031dbe17d178f43dcbc0bd4eec38fa1ed868fa9d71a"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
