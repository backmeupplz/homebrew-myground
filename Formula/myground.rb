class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.0"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.0/myground-x86_64-apple-darwin"
      sha256 "a628d7bc5a6a6f4bb2132ba97a7db0c934c4308dce8c87e337ef6d3e1aed7850"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.0/myground-aarch64-apple-darwin"
      sha256 "003c54b9da2409e5359a56be4c11e61e3235455d607ecf521cf83023df5d0bcf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.0/myground-x86_64-unknown-linux-gnu"
      sha256 "b9565212e76261938086ef1b1a5231def5bc5d434f30ba333a95a2c1489475a7"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.0/myground-aarch64-unknown-linux-gnu"
      sha256 "6f4fb949df922606fc8d21a20a0176fe202e3bed9dfdf1c5809f5d84455288ab"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
