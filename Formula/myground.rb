class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.91"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.91/myground-x86_64-apple-darwin"
      sha256 "336bbb6f02526534ae2fad5c55b995c90329a6062be4f940f9140231b30d8ea6"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.91/myground-aarch64-apple-darwin"
      sha256 "ce523afaec0923f8b47a8b5faabc63555683e39acfd6e59a4b0858060058f0ec"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.91/myground-x86_64-unknown-linux-gnu"
      sha256 "e94720f437f63653835234d37170434845d0d9950a2856184176b8336b45ab6a"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.91/myground-aarch64-unknown-linux-gnu"
      sha256 "d961c7fbd48cc93a4b38c5a374a1eca9563c04a9e413b85476d04a0bf62e29c9"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
