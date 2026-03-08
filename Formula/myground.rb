class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.31"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.31/myground-x86_64-apple-darwin"
      sha256 "115a1206c73909d3a65b851612f648502c5d3eefd5ded00e877e32db5e9b33f3"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.31/myground-aarch64-apple-darwin"
      sha256 "6ec59473f8803c01a6ad2274b91bc4b2f79a3a16d1674340f5cb9729541666ed"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.31/myground-x86_64-unknown-linux-gnu"
      sha256 "ccdfaffbd7f2ea61a1e8a583ed39993e1ec5634be42280cf62806563d81c0a97"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.31/myground-aarch64-unknown-linux-gnu"
      sha256 "93f22276653c07e857dd570750590d206e8bb5c54b081514b2bc2bc7e7c5f90f"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
