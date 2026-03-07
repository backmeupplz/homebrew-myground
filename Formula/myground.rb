class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.6"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.6/myground-x86_64-apple-darwin"
      sha256 "9c0634d678480f307cbca5c71d1564237b72e4d8ba514a34ebaaa3568d052a14"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.6/myground-aarch64-apple-darwin"
      sha256 "f1531c197c80c73cad371246c44ac50e400d5bcd3297205b7c3b3081e5d516d1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.6/myground-x86_64-unknown-linux-gnu"
      sha256 "5c6d9788e74feca407b0cf65c6cc29e939552a0700fd3d905687273e911af114"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.6/myground-aarch64-unknown-linux-gnu"
      sha256 "7836ac2c7ed73039e1f472e9186378ffb76fbf52c62740ada87589f6b4d0ef5d"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
