class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.6"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.6/myground-x86_64-apple-darwin"
      sha256 "1ab012ce2f2ffc63483ba0abf27d92a25bc8a36a5fecdb77531a19b251df33fb"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.6/myground-aarch64-apple-darwin"
      sha256 "dbc8840cd76a9917a8511c382888492b4e2f8f1e6a124545dd43da6d32df27b0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.6/myground-x86_64-unknown-linux-gnu"
      sha256 "c340961271d5e0cf76b0e0e054e77b90ac9d0c212e965431e8a05b0ecdd612fd"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.6/myground-aarch64-unknown-linux-gnu"
      sha256 "27b64f61c91dee1995351be1c036e4d799193d3b6038c6a70604bbc432527236"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
