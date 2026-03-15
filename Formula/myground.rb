class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.76"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.76/myground-x86_64-apple-darwin"
      sha256 "7b25ff7f678d080ba1aa7be28dcc4c3af652dc5b11d2a581b624680051c1e4fa"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.76/myground-aarch64-apple-darwin"
      sha256 "ab54b06131693935eb031ee19693bb954bf083243efa2e713923d493a0f176fb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.76/myground-x86_64-unknown-linux-gnu"
      sha256 "6183598ca14066d53249ebe4f41ead467538863be3e472dbd5bfdc4306822c33"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.76/myground-aarch64-unknown-linux-gnu"
      sha256 "898e5f5f91b4a43b2fd9851a3cfc065208dbfff902f8ecd8ba84a91e9ee8e521"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
