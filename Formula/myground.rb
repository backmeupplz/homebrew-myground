class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.48"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.48/myground-x86_64-apple-darwin"
      sha256 "509bbb5d69c487ceadb1f8114e39f3d1b851eeef3798c9507bbb78ca5236f1f5"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.48/myground-aarch64-apple-darwin"
      sha256 "0762ea5ba8adb19eb64256218d4b2e116a76b108e688abf277fcaf31163c8844"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.48/myground-x86_64-unknown-linux-gnu"
      sha256 "8c3632e101aa56a6fb3bb70f3bbbb3beac210e4eff193f2c68faa4792d8c1e98"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.48/myground-aarch64-unknown-linux-gnu"
      sha256 "0656e5155e6fb7158b291fb11ed99e8b457a8c14801aef69409a4e327d2d085a"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
