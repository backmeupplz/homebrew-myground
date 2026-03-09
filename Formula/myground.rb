class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.56"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.56/myground-x86_64-apple-darwin"
      sha256 "7bfeed02672ee26dcc5e7af6b05759ab039b90476ae8d73b16b9ad3a5d1c9da0"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.56/myground-aarch64-apple-darwin"
      sha256 "4991af9cf71fb056e545c3692bd049c940abe86b1699be1c5603ba14d8c1506c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.56/myground-x86_64-unknown-linux-gnu"
      sha256 "1a290330870c66ef82a53a47bb2c7f45619d95935145a6e7de42c42e84d37c57"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.56/myground-aarch64-unknown-linux-gnu"
      sha256 "a09ac43a09b94b33d4568ec596a1200f581bf17a40a01c7ecb954ba4184bc037"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
