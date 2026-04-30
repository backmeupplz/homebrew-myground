class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.90"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.90/myground-x86_64-apple-darwin"
      sha256 "930bcf2ccaa6b05a9c13665376150fa228b4541deae1479db7273239282be688"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.90/myground-aarch64-apple-darwin"
      sha256 "6a6fd1ebd29eb9a025d47b7bb1472420f50536acff0325da4694f07e95e8610d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.90/myground-x86_64-unknown-linux-gnu"
      sha256 "e313ea34935f05ceb0dc4158bdb4e0ff18461177d5f355b11462522313052417"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.90/myground-aarch64-unknown-linux-gnu"
      sha256 "8827b72a319c2b39005ce0dfb7831bb45bf74643f8b7774c4aaa5f2af147db25"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
