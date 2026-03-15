class Myground < Formula
  desc "Self-hosting platform — hold your ground"
  homepage "https://github.com/backmeupplz/myground"
  version "0.1.75"
  license "MIT"

  depends_on "docker" => :recommended

  on_macos do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.75/myground-x86_64-apple-darwin"
      sha256 "eae5911b28e51bda3017942a883df053a42fedd1dab59eb5d2e8d3c6c4ebc7b8"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.75/myground-aarch64-apple-darwin"
      sha256 "cbc0fa7ca6acf9c770770632b7a06b109c9261ffd9da34490085295d24cc302c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.75/myground-x86_64-unknown-linux-gnu"
      sha256 "f9b18a86da7688ef9b7cdbb82af3857493987a653c9e27289e3f011534af0e86"
    end
    on_arm do
      url "https://github.com/backmeupplz/myground/releases/download/v0.1.75/myground-aarch64-unknown-linux-gnu"
      sha256 "3bd5a3cb12eaf3694d319a737e04a616314c4bbebc30f4753c94027a4db60eba"
    end
  end

  def install
    bin.install stable.url.split("/").last => "myground"
  end

  test do
    assert_match "myground", shell_output("#{bin}/myground --help")
  end
end
