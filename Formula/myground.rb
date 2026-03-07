class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.17"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.17/myground-x86_64-apple-darwin"
      sha256 "91e76f6c5b32dc6324b1adbb52df48ebd3b60425b5ae302175d3e96a0011d22c"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.17/myground-aarch64-apple-darwin"
      sha256 "77a45f1a672a905c06a553931a164cd598e6a954673318a3ecc90de2afe6d362"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.17/myground-x86_64-unknown-linux-gnu"
      sha256 "c276848a57729d666be10e15ceea32518d9744623545b5d8de047a7c01bccb48"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.17/myground-aarch64-unknown-linux-gnu"
      sha256 "e12d087a8476e88910b27a45479caa002fabe82b01d88097a41e8f9791c97ca7"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
