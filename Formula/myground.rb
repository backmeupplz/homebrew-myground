class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.82"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.82/myground-x86_64-apple-darwin"
      sha256 "56c7dd468fe86c6909e63e6cc6289e05016d67d2b2fbc2425be20f6aad58e42e"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.82/myground-aarch64-apple-darwin"
      sha256 "c2c9e07364505e915d1a9e5535eea93a02c851e0c26525126ea5c0bb5fb1c799"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.82/myground-x86_64-unknown-linux-gnu"
      sha256 "2d15e5de946daaaef87f2c42858b725a18993f34ecccb219c19d0985fc1ab40c"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.82/myground-aarch64-unknown-linux-gnu"
      sha256 "ca4ef53b37c9e4e8dfb16b7c178ffe856066106eecd0ce6b05f494fe3e0ab550"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
