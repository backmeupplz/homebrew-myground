class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.23"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.23/myground-x86_64-apple-darwin"
      sha256 "f8aa5b63fcb02386a0bdab41b6273d192249c8fde8c744a80bd2968d9726d496"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.23/myground-aarch64-apple-darwin"
      sha256 "9782511bdb3b37e8657d5fdd75585a34b88c47ff7ef36dafd9c93e1241f73089"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.23/myground-x86_64-unknown-linux-gnu"
      sha256 "2fd077d4488a72962c6d9099ed4480da9b9ace101df9d0704a6dcf5ca62f6f5b"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.23/myground-aarch64-unknown-linux-gnu"
      sha256 "5396c19cd57c61eedcc8f0e09032ccf433da1c855d3dfcd7a5f3dff9acd5c6a7"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
