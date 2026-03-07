class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.25"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.25/myground-x86_64-apple-darwin"
      sha256 "9f572cf50be4d1face5e3a48c1c12b152f72523d44db55de7f67e4fcc1389c2c"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.25/myground-aarch64-apple-darwin"
      sha256 "f486a92c55f1f8fdef47a433b2efc5eeba11722df0ed5e32158a36fc4a103eed"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.25/myground-x86_64-unknown-linux-gnu"
      sha256 "5dff3916eff62bf622e8685e3226fa668bf026072ba03119c9cb6cf1c467d8d6"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.25/myground-aarch64-unknown-linux-gnu"
      sha256 "c12f95925ec8de3638cc2207b7071e452a3348e4c56fc9ff20335cf7e349e0f8"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
