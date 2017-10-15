require "language/node"

class Memefy < Formula
  desc "pronounced as me me fy. yes really. dont laugh"
  homepage "https://github.com/Kaioru/memefy.js#readme"
  url "https://registry.npmjs.org/memefy/-/memefy-1.1.0.tgz"
  version "1.1.0"
  sha256 "82b913d2d87f03c227da7be955ee25974aa600e3d2691957f5115bdaa0c86975"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end