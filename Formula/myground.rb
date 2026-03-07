class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.19"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.19/myground-x86_64-apple-darwin"
      sha256 "c52691f16bd4a316d8fc5d9cd93d754cc053abd79fb7959190f9fd32fa229932"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.19/myground-aarch64-apple-darwin"
      sha256 "e5e2b9956de852006205eb9ed61f2c0dd128a9ef6d1cc8dd33a9a4d1b06f2c7a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.19/myground-x86_64-unknown-linux-gnu"
      sha256 "3a76014da68e0e69417f530d1114c93eeba12cd50c4e8d401cfd39090f4a5204"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.19/myground-aarch64-unknown-linux-gnu"
      sha256 "1d79f1f584ccbfc059e1aec9dde304942973d105ebd6e3a55cc83bc98d7caffc"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
