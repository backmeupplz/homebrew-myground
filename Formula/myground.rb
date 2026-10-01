class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.101"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.101/myground-x86_64-apple-darwin"
      sha256 "05d636c94e0a1fb7ab4655dcf85ba5d3f2afc0cc0a7df1fd6cb54a9df64851c0"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.101/myground-aarch64-apple-darwin"
      sha256 "8998fa55dba52ac8bd52bcefc1b0aa3e19c8c9762c0e8d55cadd82a26290d9a7"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.101/myground-x86_64-unknown-linux-gnu"
      sha256 "1b4385023e8680ba85db1f441a9dcc5c55102e20c815ff31339603f4d650d685"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.101/myground-aarch64-unknown-linux-gnu"
      sha256 "9c33c53abb253c46389d7d9b8b9bedcd66a0c6ebc9dd9f4a0f42be7f16e8dce1"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
