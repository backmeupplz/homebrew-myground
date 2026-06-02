class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.95"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.95/myground-x86_64-apple-darwin"
      sha256 "444353716b966edfb87659fa811321f953b33093699ab48e9205134a505b1cff"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.95/myground-aarch64-apple-darwin"
      sha256 "43f3d9fb36beb92e8c0e203f0618766493449ce97c125e0e6d9460a20a7ac713"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.95/myground-x86_64-unknown-linux-gnu"
      sha256 "2c98faaa9c243ada9659b4312b1d9d84f8f345b4217a5e46aad2f565d0018da4"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.95/myground-aarch64-unknown-linux-gnu"
      sha256 "6e02d0f4ee4980f9ae15be9aecf97aa9f32635c891e90ecacf102482a23efd8c"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
