class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.80"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.80/myground-x86_64-apple-darwin"
      sha256 "bfd6ba9deb74139f7edea36c0c819de63c3be6a43f5ada30ddbdbe23c85d9cd0"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.80/myground-aarch64-apple-darwin"
      sha256 "6f622c798a00490b7633d4b20988e5af43c819a6b6cd7967c5ea3785be27693a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.80/myground-x86_64-unknown-linux-gnu"
      sha256 "dc84f02c9536802116c72fe0e668d6ea08e953a1c644c8efc9aed43dedb08ba5"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.80/myground-aarch64-unknown-linux-gnu"
      sha256 "d777e0a68c3c208586d03a023fdd1aa993fa5f82b9d584092dd91700ae8e6524"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
