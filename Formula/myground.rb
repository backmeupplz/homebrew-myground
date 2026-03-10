class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.64"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.64/myground-x86_64-apple-darwin"
      sha256 "73dd7bf0a02f60bb5a5d8c5e633366df05db418f0c2a21bd601afef7a37abb6c"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.64/myground-aarch64-apple-darwin"
      sha256 "fbd392c0400288ccb819e15d6f46fe519eaf05a5380d52524a8e26c1026a9a29"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.64/myground-x86_64-unknown-linux-gnu"
      sha256 "bd6262ea0b9837878e486e9486efbcf17226704471ad1a7fe9948d5f7bdaae84"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.64/myground-aarch64-unknown-linux-gnu"
      sha256 "5328672873c09eb3c9fd9377c7a6927a88496a4a1ef99b6039c143e595c4d90a"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
