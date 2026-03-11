class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.70"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.70/myground-x86_64-apple-darwin"
      sha256 "d3a32eee671a0b2c94b22e875115ba5934afd1f692b21218933ff8559ce62680"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.70/myground-aarch64-apple-darwin"
      sha256 "e253961969f115f7fdc4d005e0e146e9c2b4d55b92f70b497493d6d990ac0ad3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.70/myground-x86_64-unknown-linux-gnu"
      sha256 "c7dc1a71433f556605ad3121d843db61166aed04a1b0c8f64678384ad10828c3"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.70/myground-aarch64-unknown-linux-gnu"
      sha256 "f6d42efddb1c4e977ddee749ef57684d749fd3ab2b4aa0a2fc5860a464fdc610"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
