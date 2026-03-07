class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.24"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.24/myground-x86_64-apple-darwin"
      sha256 "7385b609136387a2b8772d6fdb4c60b46f4451316b8d2486de175c30f7b3c2a8"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.24/myground-aarch64-apple-darwin"
      sha256 "80eb254071754a565f55ef88be94dc1b394c8d9f41d501487994d8677de89ba1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.24/myground-x86_64-unknown-linux-gnu"
      sha256 "a4349ea74e749c728ac528890766a00309d8ca513f8c7445ef0b0e73d766c394"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.24/myground-aarch64-unknown-linux-gnu"
      sha256 "4c2ceab91a60bb6cf9f7be7a8d74b9ecb0356e69c6dc63f97d3fc1edfbb02917"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
