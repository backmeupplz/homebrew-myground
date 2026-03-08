class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.34"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.34/myground-x86_64-apple-darwin"
      sha256 "485323169eb6a3d67a05d9cee3c969de5e27a3a10bb1b954d743f3916f670192"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.34/myground-aarch64-apple-darwin"
      sha256 "f0c8bcfa0432a2e2d842c29871d3ab0d9faec305f3c1ad06922e2ae50aee3bfd"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.34/myground-x86_64-unknown-linux-gnu"
      sha256 "1c11eb8c66910d0b02a7b9ea1e222ac1da75944f61ac9d508ed4581725a34069"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.34/myground-aarch64-unknown-linux-gnu"
      sha256 "561d5a2f81fec0de18bb1ddc7e3a012f874d90144d8d7f73a3b94cb8adac0018"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
