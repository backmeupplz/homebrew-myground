class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.99"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.99/myground-x86_64-apple-darwin"
      sha256 "b23ba91825f7cad1b328c1d817026055c3e3d2357557491b7bcb84dc7c0d511f"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.99/myground-aarch64-apple-darwin"
      sha256 "18b01460d72437faa7982edb9be6c83bd28df620a8ab3d099520ce30a238189e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.99/myground-x86_64-unknown-linux-gnu"
      sha256 "2a45733d0e937164583c3f5565e3d23ae5db6f5e4bff3ce412412459402bda29"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.99/myground-aarch64-unknown-linux-gnu"
      sha256 "a5ec8eaca5d603b24ddaae7b10d935054b40a76b1604c3f3c2f6af7925edf465"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
