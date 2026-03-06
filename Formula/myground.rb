class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.5"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.5/myground-x86_64-apple-darwin"
      sha256 "ea1648fa3c65b12a6f33ba883224cfc2d04d0f56e61319288288ef25c58aa103"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.5/myground-aarch64-apple-darwin"
      sha256 "70a8bae70d16bdae93b1ac6b9f2efa30898e5f0001d7dc906fed48caa5fbd33a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.5/myground-x86_64-unknown-linux-gnu"
      sha256 "d9483503e841b6635beeeda3572482e741f45cee5bfb848a712a9cb5ca8415f7"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.5/myground-aarch64-unknown-linux-gnu"
      sha256 "45261564ee082f8b6a981bb4abe88d857fb2b85555137f2cc1010f78d37874e5"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
