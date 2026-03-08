class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.41"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.41/myground-x86_64-apple-darwin"
      sha256 "5688aef90166dded9a42a08d3ee41eefbbf9b1719aa4d51f1cc276a616e4592c"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.41/myground-aarch64-apple-darwin"
      sha256 "c1139e59908bbc4524231a319f3739df64be449be3292aa86d564580732d9d62"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.41/myground-x86_64-unknown-linux-gnu"
      sha256 "1b0ea5a1a364bceb9eddd184d90888cb10b70aabfa398459e978bbe70631dd11"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.41/myground-aarch64-unknown-linux-gnu"
      sha256 "cd6a7ffa8a0a87d3f400387c908d674998f955f891154c6b09e8223332e3025c"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
