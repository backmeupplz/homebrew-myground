class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.78"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.78/myground-x86_64-apple-darwin"
      sha256 "d50d5f99a63f1bc5ae0f69046c12553656ccdbfa5980f9f1f1339e3c5513db53"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.78/myground-aarch64-apple-darwin"
      sha256 "1f18e3407431ec1831b8336668825c7ddfcb86e44af36fe1c27f47feaddbf0dd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.78/myground-x86_64-unknown-linux-gnu"
      sha256 "82c31c0ce1f1dd9137cb0921193b2036526f7d0ca436e6b1eb9b7759b16de543"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.78/myground-aarch64-unknown-linux-gnu"
      sha256 "956968b9b90c67c6acef7ea34025865f8de99ebd00f44d3e9895f70f32366c92"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
