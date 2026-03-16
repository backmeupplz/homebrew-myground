class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.85"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.85/myground-x86_64-apple-darwin"
      sha256 "0dc7dad1fa192ba66cd16854ebb1f37124751dca0c3986d09885f54dcd08130f"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.85/myground-aarch64-apple-darwin"
      sha256 "171a7ab084d05478275cec303374d3ec8d33a1f5f20ad56bd32271315811f9f0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.85/myground-x86_64-unknown-linux-gnu"
      sha256 "167483778e7550e699545b0fe18e0e84649729f8c8772750c42a4156820c0840"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.85/myground-aarch64-unknown-linux-gnu"
      sha256 "0328b3c0166364937d95266115c7d0605c1041bfda09983670b72450524e25a2"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
