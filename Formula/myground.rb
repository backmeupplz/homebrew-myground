class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.68"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.68/myground-x86_64-apple-darwin"
      sha256 "1ae1a610011d1ba4917709ee22076b7a981dc63c8af0b274e2967e78fb2b7550"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.68/myground-aarch64-apple-darwin"
      sha256 "8bda11a7353fca04c345ae01a35256233ddec53b8813ae402acfedc42b6c8cbd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.68/myground-x86_64-unknown-linux-gnu"
      sha256 "8b474c30821b75dc209d46ac29461c8b8b1baa4e7530805fcd976acf3e7fd129"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.68/myground-aarch64-unknown-linux-gnu"
      sha256 "8d480c3fb223a57ebb440f1f5595eee721697f5137277c77fd4b74ece41e5cdf"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
