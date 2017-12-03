require "language/node"

class Memefy < Formula
  desc "pronounced as me me fy. yes really. dont laugh"
  homepage "https://github.com/Kaioru/memefy.js#readme"
  url "https://registry.npmjs.org/memefy/-/memefy-1.2.0.tgz"
  version "1.2.0"
  sha256 "2d7522a8455127cbb226a5f73db12029d8d7610df17f305fe0e57ecc1d3a3316"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end