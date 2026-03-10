class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.67"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.67/myground-x86_64-apple-darwin"
      sha256 "8d280ed0f2f88234b9d10e88943dddc9d58b28f1afa544e8823580e4806efdd4"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.67/myground-aarch64-apple-darwin"
      sha256 "f27899344021e6a948106f735b027b3ecc7b07943de6cf542910bbd0113cfbc3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.67/myground-x86_64-unknown-linux-gnu"
      sha256 "b5a8b8676ab10bce132adc1abf67eb9b9670009cc640594f976ad90a83fec2ed"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.67/myground-aarch64-unknown-linux-gnu"
      sha256 "91bb8b0c782f6d89a25cadad66d88a78af778007d541b7b891419b14dd37a4b1"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
