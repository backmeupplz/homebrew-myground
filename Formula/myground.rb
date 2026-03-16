class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.79"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.79/myground-x86_64-apple-darwin"
      sha256 "302bbeba68149806bc8b633a769071b610c68ff3cb6b46b4a82182f843535315"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.79/myground-aarch64-apple-darwin"
      sha256 "799f59df204cf3b9eb171b17f7750db975a54f18dba60306d72e4f883a512314"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.79/myground-x86_64-unknown-linux-gnu"
      sha256 "13e20d7a2108ad39b79ed5434cd13ddc1aa6a9bc70c4c62aab904d6578ae8dbf"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.79/myground-aarch64-unknown-linux-gnu"
      sha256 "8140316bd6fbecb8cefc093720a4a0045bae76cb17324f0500d2f58ea39109b0"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
