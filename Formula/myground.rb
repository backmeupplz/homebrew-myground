class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.73"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.73/myground-x86_64-apple-darwin"
      sha256 "c6c939220a354bcb82053f93d57ffe6c817f435524018cfcb9802f05eaf4966d"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.73/myground-aarch64-apple-darwin"
      sha256 "b7b4cc75f54a48cf48f56b9ac50eee14bf56c5b26bd58f24537cf1c9bfa22067"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.73/myground-x86_64-unknown-linux-gnu"
      sha256 "7061d380859c543e5f3c624a0309a7cf4d5f1d6ac8e6243688a26d4ecd8a3fa8"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.73/myground-aarch64-unknown-linux-gnu"
      sha256 "a8d6ab421e6a6b762576cbde96ec6f89061df247d3d1f56a0674163d96ebdaeb"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
