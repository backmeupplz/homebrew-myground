class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.105"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.105/myground-x86_64-apple-darwin"
      sha256 "fda809ac03abe86267c0f9c09ce52628079dede29b6810da1913649c2b79db46"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.105/myground-aarch64-apple-darwin"
      sha256 "6564f8177e929c86ac7d935b4786629ce6fe960eeb286e075316d3a9d1ca9745"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.105/myground-x86_64-unknown-linux-gnu"
      sha256 "ac607b176ed240559e9fc8a098a465206bc74660db6df23cec7cd6f2d7ab4317"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.105/myground-aarch64-unknown-linux-gnu"
      sha256 "7cd55cec42600735792ad3fe6decd0f58c8c57b87d6a3ea9d6456dfe29c719de"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
