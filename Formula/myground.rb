class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.93"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.93/myground-x86_64-apple-darwin"
      sha256 "2ab015e2aac897c40c3f50ba41df2fa36ada48ebc5430f8b2d642db03be1bdb2"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.93/myground-aarch64-apple-darwin"
      sha256 "b4e77ce69178edb5c98e856f23b26db94c328fe72f2332476175385e3038af98"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.93/myground-x86_64-unknown-linux-gnu"
      sha256 "61f2b4aef0bf073488cf596e049097e534744380f4c2767f6aa3f2a5d1a9aae1"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.93/myground-aarch64-unknown-linux-gnu"
      sha256 "39d9a5cf47d67fb75f0d9ab7000816185d91d5e5ac6c8ba245d23b8c0cc98cf3"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
