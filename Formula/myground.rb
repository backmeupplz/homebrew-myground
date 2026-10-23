class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.111"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.111/myground-x86_64-apple-darwin"
      sha256 "66c174c86379b5477a5153ef0027214d8c0876ca6c78d7959cd98a4655de9efa"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.111/myground-aarch64-apple-darwin"
      sha256 "b6b305457f83a20af4df6211aba01027d4813c5732259777a5de1cca2d2efc3d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.111/myground-x86_64-unknown-linux-gnu"
      sha256 "e583c75efd6173c9d8d6388731683cb80e7549969fab86771f4b8221ed7aa94c"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.111/myground-aarch64-unknown-linux-gnu"
      sha256 "bd0ea62f0308af67b80436c61b88f5a6b792d4277b24c39a7d77a60044ab9969"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
