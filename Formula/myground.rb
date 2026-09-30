class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.100"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.100/myground-x86_64-apple-darwin"
      sha256 "9203244a358d92a3456f144e66840f06dfeb47579c93c4817e8ff9cb20722244"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.100/myground-aarch64-apple-darwin"
      sha256 "3a2280a8e52f13ba0e4f4050066620fd749fb6f117aad001beea17c5217cf3ae"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.100/myground-x86_64-unknown-linux-gnu"
      sha256 "e16d5e323337f060606c5d8c996ba3d6a9bb5a5c4306d31373cd3df246174028"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.100/myground-aarch64-unknown-linux-gnu"
      sha256 "c17ed1912abae34d1012b06f59c9e692d9c546fe2d0218a897599199e2e32310"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
