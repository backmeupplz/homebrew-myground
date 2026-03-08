class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.43"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.43/myground-x86_64-apple-darwin"
      sha256 "eb41eb5ac6dc0f9cbe6532ecaee240bb71c4a622610a492a98c063af23ba427d"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.43/myground-aarch64-apple-darwin"
      sha256 "bad67917a455a2c6562ba105d2a464080f96587ed6463e94c8a20f28243f53ea"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.43/myground-x86_64-unknown-linux-gnu"
      sha256 "dfb2f985f98569996426dcba710c6bca10fc540b239ba07bbc6a4b2652e8706c"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.43/myground-aarch64-unknown-linux-gnu"
      sha256 "fa97c54829e7aea715b973514e4ff227cb2f54cb3c538b3be50d856ddd785b95"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
