class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.45"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.45/myground-x86_64-apple-darwin"
      sha256 "0c24d3c24a70789f5af0d7e10f3d106917436e01c7494068f6688f1ce6cc0d8a"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.45/myground-aarch64-apple-darwin"
      sha256 "c8ac2fb15f09fff0bf64efa475289f041a054854f72403cd5f67cf3a4d7b37ea"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.45/myground-x86_64-unknown-linux-gnu"
      sha256 "b388aa82c4a4cf1942ebfcc8b48edbfc2418befaa16986e7b5b15b2f20019872"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.45/myground-aarch64-unknown-linux-gnu"
      sha256 "bb105ad24536e63e81348fcb5849b200de3e57ce32acce878a1a991165bb0820"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
