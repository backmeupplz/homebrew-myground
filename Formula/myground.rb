class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.76"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.76/myground-x86_64-apple-darwin"
      sha256 "801e83cf3c96414308d0787155db3313873889bbeb1576567b06cff6fa91b979"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.76/myground-aarch64-apple-darwin"
      sha256 "b43dbe4168ff71ad3a110d1fd1040031271f3780fb159e17761886d165388592"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.76/myground-x86_64-unknown-linux-gnu"
      sha256 "a00f093cfe828a092cacb29c2b612a296afc3475eb904e0a0499d29685ad396e"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.76/myground-aarch64-unknown-linux-gnu"
      sha256 "7318fb10bda934ec8e8ff5fa6dcb526b78e22036a58f6d4b44d8db0ff86d9a2d"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
