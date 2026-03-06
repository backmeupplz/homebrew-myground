class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.3"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.3/myground-x86_64-apple-darwin"
      sha256 "733475714a87de44f4653530e6dfac253188a09e1da35dab974e8dd506892a89"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.3/myground-aarch64-apple-darwin"
      sha256 "b2a97d512aaa093f934d41d3224ffc34b5ff84b0c7126bb3e2fe186d94010319"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.3/myground-x86_64-unknown-linux-gnu"
      sha256 "c37956095ed51fd9147feafc25baba7138bfd7c1740f3c097e6739aeb679c282"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.3/myground-aarch64-unknown-linux-gnu"
      sha256 "462e7ec010cf0a03b35641819f937f5c3b4090777a36ab4f76048742ae22fd77"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
