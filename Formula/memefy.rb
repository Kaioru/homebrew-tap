require "language/node"

class Memefy < Formula
  desc "pronounced as me me fy. yes really. dont laugh"
  homepage "https://github.com/Kaioru/memefy.js#readme"
  url "https://registry.npmjs.org/memefy/-/memefy-1.1.2.tgz"
  version "1.1.2"
  sha256 "003a710d6c72b23a5f0a56c6de8cbf9fd250e4a207d78b79bc1581e02921e803"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end