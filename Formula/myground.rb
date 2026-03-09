class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.63"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.63/myground-x86_64-apple-darwin"
      sha256 "606a992edf5454df8933f7da9fd48ccaacc22b4646e964ae2056975769adc879"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.63/myground-aarch64-apple-darwin"
      sha256 "c48a0f41829d3efbede884b47edbf11647c53f0167a28d8466df70565a827df1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.63/myground-x86_64-unknown-linux-gnu"
      sha256 "b627e64f279fd6e3e6f353542f0b40f43b88c0c813b65fe3c82421cf3db2a5de"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.63/myground-aarch64-unknown-linux-gnu"
      sha256 "905345fba224e1906a76cdc25687803a98bd95a542f73c7bb5fda226e975eda7"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
