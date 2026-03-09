class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.48"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.48/myground-x86_64-apple-darwin"
      sha256 "5176bfddf7060b80db20da446327c29277f4ed9a657a24d05167038c4aaa3770"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.48/myground-aarch64-apple-darwin"
      sha256 "c93c9cd43c9be6efc6f2defc9bd1ee9676f40c70128c32b5b3af1d626b22a7e3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.48/myground-x86_64-unknown-linux-gnu"
      sha256 "50e57c0fce677a2ec81560fd68e1f5ee13ec69b4a24457e883de3d07ed74a762"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.48/myground-aarch64-unknown-linux-gnu"
      sha256 "7e369d746c25703c62554968f27766b780f64573883986c4f35ee9b1f76adf23"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
