class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.74"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.74/myground-x86_64-apple-darwin"
      sha256 "7da0c443cf47efd184054bedeb9c8e74fd00f871beee2da987cc579f529f482e"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.74/myground-aarch64-apple-darwin"
      sha256 "6d3a10646bbfd82cf8272174dc8d5d8c9643d880f2668da23e6b9613cd9944a1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.74/myground-x86_64-unknown-linux-gnu"
      sha256 "cad61f79c1bf0f2542894ace8b843334f473a2fe6cbc8ec87f83aa5596e23e52"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.74/myground-aarch64-unknown-linux-gnu"
      sha256 "cbb2afdc929737f64ffeddee9361781b91339bc86fbd092213847ba74a116b46"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
