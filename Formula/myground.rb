class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.38"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.38/myground-x86_64-apple-darwin"
      sha256 "92e90f5beff06139b9cc272e9c07a2663bd6dc1d8e32eb9cf8b9e21b7576ad29"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.38/myground-aarch64-apple-darwin"
      sha256 "71a785e64270bd344c6a8807d4b0dc4adc3ce5347e19666c01be1cf96155a80b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.38/myground-x86_64-unknown-linux-gnu"
      sha256 "1ff49720fc71bd66743911d631487a2b11936e9bb0bc7e9f9ebdfb11d4d1e067"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.38/myground-aarch64-unknown-linux-gnu"
      sha256 "d0e84807bbd49d411716de211d75535d82eb1a1401e549ad942435ee9edb2479"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
