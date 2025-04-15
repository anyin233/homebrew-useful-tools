class Lanno < Formula
  desc "Command-line tool for enhancing code organization with file annotations."
  homepage "https://github.com/chivier/lanno"
  url "https://github.com/Chivier/lanno/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "b7c765837e30e64b54292da701a117e544e0f12e70bae03bcf835bd310bc6878"
  license "AGPL-3.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args
  end

  test do
    assert_match "lanno v1.1.0", shell_output("#{bin}/lanno --version")
  end
end
