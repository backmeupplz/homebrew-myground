class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.115"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.115/myground-x86_64-apple-darwin"
      sha256 "8808639e32d45d4135cbde50332cfbfd427bc98cedb347509a92a48e69d3f189"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.115/myground-aarch64-apple-darwin"
      sha256 "31c87a839b66a412e56338a5f9cc11acc6b6d9a0a5854cc4f5ffc05ff43ad43b"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.115/myground-x86_64-unknown-linux-gnu"
      sha256 "afe6ef2d3ecab95a8e227674fd7567123573585f8ab9c10a108c2b15440e727c"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.115/myground-aarch64-unknown-linux-gnu"
      sha256 "a1a51f239e9edee15099e6d8fb853a9de2d0bf1e39a2d90ed7aacc00cb863822"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
