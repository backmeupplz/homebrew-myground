class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.10"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.10/myground-x86_64-apple-darwin"
      sha256 "f6832d4d3ff637814e266ce1448ef4169bf58591794a3fc2e8af51e2a9cc617c"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.10/myground-aarch64-apple-darwin"
      sha256 "768e8bc0929a08f321f3718ac5a6b970a622a7893f01599c1e644df832063f9a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.10/myground-x86_64-unknown-linux-gnu"
      sha256 "37bb54c95e094bd1b5ad7834caa3934963ac1888ce7b4f0afa63639968df078f"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.10/myground-aarch64-unknown-linux-gnu"
      sha256 "a9d530d007c6e969cb106a6248dc5276166e69a100098130b20f1476e69cb67b"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
