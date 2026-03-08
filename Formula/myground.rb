class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.32"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.32/myground-x86_64-apple-darwin"
      sha256 "c6f82277a196b4e305e4b1a676ce761c235a1a97e1e785109201a60f926dd01a"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.32/myground-aarch64-apple-darwin"
      sha256 "7b8db99e652943d64bcd9878390d83add950b5be7ac0f060f51de7e56f633789"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.32/myground-x86_64-unknown-linux-gnu"
      sha256 "3a5a4ac9e85773d4800bd23f65447b6454b79f8d95473e655db755236de1ff4c"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.32/myground-aarch64-unknown-linux-gnu"
      sha256 "69ae8a065c821c9c3483b3300d68041305e595cf8dcb9d16a2d97038478ba4a8"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
