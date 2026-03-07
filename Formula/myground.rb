class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.9"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.9/myground-x86_64-apple-darwin"
      sha256 "dde51c6e50ce9b8be71b9e54c824b17b9bc943c294d40e2cc9a44939235708a3"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.9/myground-aarch64-apple-darwin"
      sha256 "441baab253e3a250a0fdc7a57c9d7f6cd30019933a38d5afc7be958a5e1bdf04"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.9/myground-x86_64-unknown-linux-gnu"
      sha256 "58c755515697c600ea101172700409e60ee37777e3a6449c7d49ed258764cb99"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.9/myground-aarch64-unknown-linux-gnu"
      sha256 "b8051844ec1a4ebd9bad6f7872eb47c73802a8d7df324d4d994cf98766062fd6"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
