class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.77"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.77/myground-x86_64-apple-darwin"
      sha256 "16aa75a4065d510ce63da4e24e0c885be4b33d1d668a7241391fc7925e239382"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.77/myground-aarch64-apple-darwin"
      sha256 "0f795560b6b676498a9c570c7afe69503809a896708d77af0442c50f4f34e0b3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.77/myground-x86_64-unknown-linux-gnu"
      sha256 "13ddd25b0e9833fdd9126683d5f71ff7bcb52f3e6b2d9283f16ace83755305a4"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.77/myground-aarch64-unknown-linux-gnu"
      sha256 "6f62a08b2b9ca240aadbfe6e6b69f46679e30ef09621bfabed8c4bb6c4e77116"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
