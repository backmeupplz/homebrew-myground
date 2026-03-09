class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.46"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.46/myground-x86_64-apple-darwin"
      sha256 "82a163ebbd5533e66884959d628672659222c06845d777ff14ee277072800e99"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.46/myground-aarch64-apple-darwin"
      sha256 "d0db911dc87a58eb1ab42201cc386795ebd801c11634e1b839270393c0b9b988"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.46/myground-x86_64-unknown-linux-gnu"
      sha256 "5a83c3381f96c78d02a561a3123af4794c3a2ca288c8e132ee705bec67b17670"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.46/myground-aarch64-unknown-linux-gnu"
      sha256 "2bea1dd0c75bf242ae9f87a75c07ff7207986356fc98987acac645cc789ce5e6"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
