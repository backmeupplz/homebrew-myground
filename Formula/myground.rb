class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.66"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.66/myground-x86_64-apple-darwin"
      sha256 "d229a12ae635b116347949f058a9214e3268c44c09317ed410ef66531497adf5"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.66/myground-aarch64-apple-darwin"
      sha256 "301286f559cbc6c8ec2d0b94de90b918fdea8973cc212baca1c1b500f0717ee6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.66/myground-x86_64-unknown-linux-gnu"
      sha256 "1108113581be99f3088256413d7c2eb20d82eee654be705ef1ad69ff01b21ecd"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.66/myground-aarch64-unknown-linux-gnu"
      sha256 "e2cc43753dc4427dfe0f04e138a691ff816e752f29843bb0db1e998bef8fc8a1"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
