class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.86"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.86/myground-x86_64-apple-darwin"
      sha256 "aef3ee8d6bf3fd0e1139bce729381efbf9728bfcce22d56e18dd26cd4387d200"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.86/myground-aarch64-apple-darwin"
      sha256 "d2ea32e1bb3b84467634773d91af6abf5ba0a7a23a0957a513b849cd5d5cda42"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.86/myground-x86_64-unknown-linux-gnu"
      sha256 "f482600920b9eacec957d890ae5320caea5d3717def5897629eddc87a8e33bcd"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.86/myground-aarch64-unknown-linux-gnu"
      sha256 "3e05c84cfef553d69620a9d07b5f30a27d5de2ff07753e6d5d7e7a28dca8253e"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
