class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.96"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.96/myground-x86_64-apple-darwin"
      sha256 "85af3a1a70f05f1133c4b825a7a1b3920e655a68c47cd6cb28bd3e88f6eb62eb"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.96/myground-aarch64-apple-darwin"
      sha256 "15e4e23d31a0d0a702da424e0d2c4e825a86f2092fa13174a288297ecdaf0206"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.96/myground-x86_64-unknown-linux-gnu"
      sha256 "e355639e9fc524555f12923106e1f6fa8dbe23009bb8dab51dd158560b68a0a0"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.96/myground-aarch64-unknown-linux-gnu"
      sha256 "54f4d1ad9674fd446695f752457631383e31daeccd7bed749e1b6e633873bff8"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
