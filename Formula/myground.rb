class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.1"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.1/myground-x86_64-apple-darwin"
      sha256 "47f03d8857b8114afdc06188e8f0a3cd7095e5a4ae2e272c1135504e831cc400"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.1/myground-aarch64-apple-darwin"
      sha256 "eba3d9ec8eb798007fba78aa332c770e88df1227bacfc897b8f8d0e4f06819c1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.1/myground-x86_64-unknown-linux-gnu"
      sha256 "271d8edc5b0136006f41b02d4bac2620b8082df7448df160319befb1d4a1e369"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.1/myground-aarch64-unknown-linux-gnu"
      sha256 "8745b777325a3506557c827355e9424ead476b8ceede3ac4fd6a39290511b8c6"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
