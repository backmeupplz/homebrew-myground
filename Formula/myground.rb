class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.102"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.102/myground-x86_64-apple-darwin"
      sha256 "4cfa5ab8f3134b69f9ef6b7feb179635dd4631af45ba2b495a6e51a28ae6d433"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.102/myground-aarch64-apple-darwin"
      sha256 "9bc60329da35fa9dfb6f0a372758e5128583a6c2b25c89994e13a1c95706e702"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.102/myground-x86_64-unknown-linux-gnu"
      sha256 "35dbc8a811dd065bc7f278b0e32a4abd3d6dda4ebecd4edd9151da87d60ae1a1"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.102/myground-aarch64-unknown-linux-gnu"
      sha256 "d6bd448640b8b35544487e3acfc144061afa3842f88a569c85878b5c720e5f29"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
