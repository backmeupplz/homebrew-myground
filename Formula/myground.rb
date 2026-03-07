class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.13"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.13/myground-x86_64-apple-darwin"
      sha256 "d0683dda7ffe179e010b0f36be38e2ed2de0b9c990d32c433d439c3c67aa8790"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.13/myground-aarch64-apple-darwin"
      sha256 "eec8c901a6a14cb8cc389e16a42aa6e3ad807547ea3e719e9bf7bf6c57e62dab"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.13/myground-x86_64-unknown-linux-gnu"
      sha256 "f937d1a240547e13c6e1d4dc2871872ad690e6227037d2c397cee0d3e1c8b6b5"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.13/myground-aarch64-unknown-linux-gnu"
      sha256 "34b1235ea84e6e99a86387d4b3304b38a6e263816edc1c704ec5bbb9f6d7ec1b"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
