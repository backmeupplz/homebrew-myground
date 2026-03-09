class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.60"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.60/myground-x86_64-apple-darwin"
      sha256 "60c08dff70d121e9c8803d5e4eb20593e1a25c94796a075a63c1298b960a8a52"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.60/myground-aarch64-apple-darwin"
      sha256 "2789b7ff1b337ee5c4c2ff49aea8e0b5c8f9a83dd37cb6caebc9383cbce4adeb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.60/myground-x86_64-unknown-linux-gnu"
      sha256 "c787eb3af97f13422f6da0a8a6e1c674ad184ef426f2960bfd0d41840d24ad62"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.60/myground-aarch64-unknown-linux-gnu"
      sha256 "ea6ef4481cae91070809df30064f0d057855af74aa1d2aaebc40679a483c9ce7"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
