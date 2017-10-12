require "language/node"

class Memefy < Formula
  desc "pronounced as me me fy. yes really. dont laugh"
  homepage "https://github.com/Kaioru/memefy.js#readme"
  url "https://registry.npmjs.org/memefy/-/memefy-1.0.0.tgz"
  version "1.0.0"
  sha256 "02fc761d1b987d00ca529a07d844296fa19be97b7bbf2c4c6ed09cc2c8fdad24"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end