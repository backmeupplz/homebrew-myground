class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.47"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.47/myground-x86_64-apple-darwin"
      sha256 "cd87419e674b75a7415fe2dd5d41636ee1d8588414ee5eaa5e9ca355954d74e6"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.47/myground-aarch64-apple-darwin"
      sha256 "fba3c036b05c5d193603d49a995ce7fcee6ea5caaa193f8d5de885b53c41ad43"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.47/myground-x86_64-unknown-linux-gnu"
      sha256 "09326be1bb1836f2918492f9c4589488b78700ce2c17b7774faa88e960901a59"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.47/myground-aarch64-unknown-linux-gnu"
      sha256 "6a22885c28d447d3f59d4668669daf9ea0eff6bca9789c9157f6edeedf59e2d6"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
