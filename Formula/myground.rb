class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.29"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.29/myground-x86_64-apple-darwin"
      sha256 "2c577db6be1986a5cbddcf9ac59d89a55f030fdce56ce306f0a86639cda0bcf9"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.29/myground-aarch64-apple-darwin"
      sha256 "66e26e297385b37e75ae7c042bd457f4747f77473f168a963f815c281f84d601"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.29/myground-x86_64-unknown-linux-gnu"
      sha256 "4178d33444271a73af1756e95f1e3eabbaa129e381b8ca7bd542637aa71f733d"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.29/myground-aarch64-unknown-linux-gnu"
      sha256 "09cd599f0f060c81e13f532fb128a48b8b2ea6238b99bf7069545e45ed281568"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
