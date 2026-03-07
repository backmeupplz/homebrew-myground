class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.28"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.28/myground-x86_64-apple-darwin"
      sha256 "acd3a8afc43559124d5678496a46c830aca5e11a8903f558fd66386b94c94a85"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.28/myground-aarch64-apple-darwin"
      sha256 "471f2b0cc777313e5b473c8be17c683560d6bc83bcd870be7b6601ded2056a70"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.28/myground-x86_64-unknown-linux-gnu"
      sha256 "87bc62b59d94a115232eacfcc5a68e05f04ad7a29e9596490b8337d161c921d3"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.28/myground-aarch64-unknown-linux-gnu"
      sha256 "982e262c8c5e89ef93fed0c85c3dab9251d482958ae876aaac6f0016bc6b6abd"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
