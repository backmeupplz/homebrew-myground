class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.49"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.49/myground-x86_64-apple-darwin"
      sha256 "82e2f1e2bdab2e564003348efc1ee691c1616e47fa0c9f7e3d0214b32fba3647"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.49/myground-aarch64-apple-darwin"
      sha256 "05bcf93eb568cba31e9ab53b81c53f897223a250d59f24266718339afef9ef95"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.49/myground-x86_64-unknown-linux-gnu"
      sha256 "28b0dcbad6671b7373526851495c24d552b53735481892e5ae09446b8f9d64d1"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.49/myground-aarch64-unknown-linux-gnu"
      sha256 "4e6012d1ccd6eadb3b0fab4b1eea36d91f1564317b4717a65fde55f7b3ad1c37"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
