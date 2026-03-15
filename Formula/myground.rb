class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.76"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.76/myground-x86_64-apple-darwin"
      sha256 "944ac43ad19f12d464a99c557de4c32044ad9f70af7527b78554aeedbc4b263e"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.76/myground-aarch64-apple-darwin"
      sha256 "5be1c3b6a8b84fc71fa7908aec6b2016bc609a556c918b7c71f5681e74a35317"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.76/myground-x86_64-unknown-linux-gnu"
      sha256 "af6837f6b622db849298fc99bfa9b0e59eaf83560d2787bf393d83eb19b13ed0"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.76/myground-aarch64-unknown-linux-gnu"
      sha256 "dc31b8bbdb6fb59d8f6e4156394aea80f8f759abf60fc7ce0d6a06b9dd3b30a8"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
