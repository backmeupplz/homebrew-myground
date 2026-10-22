class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.106"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.106/myground-x86_64-apple-darwin"
      sha256 "a78e12091a16049dc1831974cc3440b348e167b126f1d4b70b19c53e37e496d9"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.106/myground-aarch64-apple-darwin"
      sha256 "0962fa73d9268d8da442d36f17ee4b47e5505dcd43cdcca26916217f2b22da89"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.106/myground-x86_64-unknown-linux-gnu"
      sha256 "5d66da8fc239ce9c6d8dc01cc5dc228e8d38303575a83cccdfd967775542d514"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.106/myground-aarch64-unknown-linux-gnu"
      sha256 "11babd8fb16b7366d033aba68f44fcb2f34639d307e0b6c710d3fc7441ff332c"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
