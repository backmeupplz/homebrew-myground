class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.27"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.27/myground-x86_64-apple-darwin"
      sha256 "739939ffdd0fd72b26c8411b9cd7e7cf5ebe827b7ff06b02dcbc7deb39d84645"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.27/myground-aarch64-apple-darwin"
      sha256 "678145d8198de4d3e63f3b889579c2932d980428fc3d334f718fdc2c09bf8750"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.27/myground-x86_64-unknown-linux-gnu"
      sha256 "69af1891c73ca4bbd2ba870c919f01b13aa4c255dc7ec8f53f4a9e8735ce34e0"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.27/myground-aarch64-unknown-linux-gnu"
      sha256 "f3b125fd003d061f60ef19f52d9613c746e6529f3d4b0850cd5b7b2da271f08f"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
