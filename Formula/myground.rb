class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.78"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.78/myground-x86_64-apple-darwin"
      sha256 "118058be73d727bb2ef04cdf1975de445f2cdf5a9672fd269ef829a839720faa"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.78/myground-aarch64-apple-darwin"
      sha256 "727c38bfcbfa264f498b0435c618f7b50689b633983cb2e92fc7b21b20c8a01a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.78/myground-x86_64-unknown-linux-gnu"
      sha256 "3aa8520c48306e9699682f787651c662e7404ac04c7707fd0efa20eaa5dd3186"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.78/myground-aarch64-unknown-linux-gnu"
      sha256 "5040a6c30bdbf90511a1be8d07b5677954c2e26c7bb1b794cf6f82cf099cb6ca"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
