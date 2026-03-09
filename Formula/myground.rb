class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.51"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.51/myground-x86_64-apple-darwin"
      sha256 "311f453741053ac0fd7633f489e3765c605998650cbc638d9d1bdcd5acba3213"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.51/myground-aarch64-apple-darwin"
      sha256 "ce5330286993a017d4fd69975878ab2ff56a8d7a289f8c5f82f522f7f5fdf8bc"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.51/myground-x86_64-unknown-linux-gnu"
      sha256 "28d7ec8d80df469f46bef919ee664137b8b3d05ee110d7869e0c77707052ff9b"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.51/myground-aarch64-unknown-linux-gnu"
      sha256 "745f3abcbe1d233b951814f6bdfd040427674c87d390f205c64e907921f3a0d6"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
