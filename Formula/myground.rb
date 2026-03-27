class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.88"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.88/myground-x86_64-apple-darwin"
      sha256 "6b014d2cc35164b8fb400ec8e717b55a0df8ec267fb2d2ee1ec76e20ccf9f0d4"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.88/myground-aarch64-apple-darwin"
      sha256 "7535971a59e629dea04554271cc1616feffa4d1f097699dcdea510fd9dc1cf4d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.88/myground-x86_64-unknown-linux-gnu"
      sha256 "2f240a7a5be95c5aa44d70edb793b1dfe54c55c5dbc4096ec090fcf2cf060e6d"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.88/myground-aarch64-unknown-linux-gnu"
      sha256 "f74ec057c9f4f2e8ba8276e1c8195ace7e3cfa9fd3cb83c9c6ee35a8a9eba0f9"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
