class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.36"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.36/myground-x86_64-apple-darwin"
      sha256 "d20011a15c8d569866d0f0f51dbd81d7eda3f6693aa52302215b0ee5d220878a"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.36/myground-aarch64-apple-darwin"
      sha256 "70281485e81952defb618f604e19d0c82b376c067adab3195f53250ac24b8743"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.36/myground-x86_64-unknown-linux-gnu"
      sha256 "5e2d3444ca6ae5b95423072e039e7e36f9ae12d7e7231930135543efbde306ed"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.36/myground-aarch64-unknown-linux-gnu"
      sha256 "b40469dce585514963922ab2fbe939d276aece61ee29b074e1a605b6bd728fd1"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
