class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.84"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.84/myground-x86_64-apple-darwin"
      sha256 "0dba39d730f1cf200d5ab8ae755c731652a3315c13dc2b24d7ed08f279079857"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.84/myground-aarch64-apple-darwin"
      sha256 "1199d51bcbeb8b6b2e6cda3c1c0cf421ecb46e1bf77fa6ff1fd120ce1f47b726"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.84/myground-x86_64-unknown-linux-gnu"
      sha256 "9358041116180584f52ff3c27532a36b3017436efb548e0dd57e6817bf63c14b"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.84/myground-aarch64-unknown-linux-gnu"
      sha256 "b422b432e5a988648d973acaa6b76f53cd518b0c3b896c4e4587fdf71cedb7c6"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
