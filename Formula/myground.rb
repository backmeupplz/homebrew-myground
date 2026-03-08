class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.37"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.37/myground-x86_64-apple-darwin"
      sha256 "70328b1adf5e81b65024bd3ef0e26f59c2dd76a5f8576f718447aca0c784fa52"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.37/myground-aarch64-apple-darwin"
      sha256 "84c8d44804759db3cf694eb773ae795594788419c3eebfeeb8d5f7c2fb9463e8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.37/myground-x86_64-unknown-linux-gnu"
      sha256 "986880b20237debbcd8347de6f0811bb5313c3008ffa2d75ae742a3b706c2195"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.37/myground-aarch64-unknown-linux-gnu"
      sha256 "2ac0e8471b435c2e9426506cc74e34afcdd5e86ab7cf7f8d4cecd0533ee43908"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
