class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.94"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.94/myground-x86_64-apple-darwin"
      sha256 "e436b82a0515497a8bfa9ec2ee84036df88018c2dfd68c98b5ed558726770b64"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.94/myground-aarch64-apple-darwin"
      sha256 "8fc9d2764d14fe08afabed38e40ecd40afbbbcd7141d4d1a0f86f45ab93b6e98"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.94/myground-x86_64-unknown-linux-gnu"
      sha256 "6ca6520fd778cfb86de8a8d00b85e61672aa5cfc64e2b7ad93527b65177dc70b"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.94/myground-aarch64-unknown-linux-gnu"
      sha256 "d7a1dc2bf5258c202c77a159fc9012c07cad8f38a5130cf2921b71098676aab8"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
