class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.104"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.104/myground-x86_64-apple-darwin"
      sha256 "984e68af0d81db81e59de9650a034d5f8181860836dba71c7cb42d586b6f08f2"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.104/myground-aarch64-apple-darwin"
      sha256 "20f0c4b97add991e1a12c85b7aab6e0cebe3c18a3859f0814fc6a65d369b2cfb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.104/myground-x86_64-unknown-linux-gnu"
      sha256 "95981468ef2cd4585077375e60280e2f6b67153bb4dfd362a3d90c73000e2f35"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.104/myground-aarch64-unknown-linux-gnu"
      sha256 "6a1c7847f1908d103e62faca2d4c6136412b2e6eeb6c779e27878afdb4e6b8c3"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
