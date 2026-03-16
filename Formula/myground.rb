class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.83"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.83/myground-x86_64-apple-darwin"
      sha256 "1d08e633b65b1a0a2253bd297be6dadf71b314ab332466afd8f0af331db93264"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.83/myground-aarch64-apple-darwin"
      sha256 "4ebfabd59786f959b3ecf1580ad26d9387ed97c144c12819a3c31a9d7f4d880a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.83/myground-x86_64-unknown-linux-gnu"
      sha256 "a3018916bf265588f3add6afeb3546d1b11d94cc9423922e8a115744cc01c688"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.83/myground-aarch64-unknown-linux-gnu"
      sha256 "9913cc7d0595d70b5fbdd2851066e162225cbc6d5641d1c5c27de0bffe448662"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
