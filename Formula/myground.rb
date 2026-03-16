class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.81"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.81/myground-x86_64-apple-darwin"
      sha256 "534fe2970691036cd937624309b6a79430991533b1f1fe3a2f62bb213c0db359"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.81/myground-aarch64-apple-darwin"
      sha256 "dc3e7eb5ee88a4fa1470a569ac26f431ca379b4640149efec79b2e302bcccbfa"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.81/myground-x86_64-unknown-linux-gnu"
      sha256 "9e0ac793c18e8d4dbf3722ff757a9b507225b0a5ea8feed503bb9dd9396d8c67"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.81/myground-aarch64-unknown-linux-gnu"
      sha256 "f0c4f3bf4a2ffd94255c802e424bc99d7f5d768769948f7c27cd20a1676382e0"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
