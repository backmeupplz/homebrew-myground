class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.58"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.58/myground-x86_64-apple-darwin"
      sha256 "015263b2547c3f526c0fe14b8881343bed78c16024cd39b70ea7c9103ed519a5"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.58/myground-aarch64-apple-darwin"
      sha256 "9d66494b8abca044dcc24ae5d7e8110d2b77d3920edef7fc60ddd966cdf13853"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.58/myground-x86_64-unknown-linux-gnu"
      sha256 "80a88bf74379051f544460a0cb8f092faeace8dcfa180e63953f065a6184feed"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.58/myground-aarch64-unknown-linux-gnu"
      sha256 "a4506c4e8fdd393f35be209b60eabd2e3b3d6b31b656d0cbafa3cd9dd2c7a194"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
