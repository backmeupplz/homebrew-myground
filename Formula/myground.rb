class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.26"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.26/myground-x86_64-apple-darwin"
      sha256 "b329499f025cfc864d30e47a320e6c46275992e839a7b4f30a079ad33296fe9f"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.26/myground-aarch64-apple-darwin"
      sha256 "ad0ff2e6c188c092dae12c72bb63da00d857e453ff4c0eeca8813cd0cd912b1f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.26/myground-x86_64-unknown-linux-gnu"
      sha256 "42b76497165dc86ca540d2d6604828573075cc2e25a049f34703f966de9f5fc9"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.26/myground-aarch64-unknown-linux-gnu"
      sha256 "f3735a600f2408317ddf9f022c7b356ef03cd2e2577115dbb4bef5b30bd37d5c"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
