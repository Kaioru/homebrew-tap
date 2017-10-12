require "language/node"

class Memefy < Formula
  desc "pronounced as me me fy. yes really. dont laugh"
  homepage "https://github.com/Kaioru/memefy.js#readme"
  url "https://registry.npmjs.org/memefy/-/memefy-1.0.2.tgz"
  version "1.0.2"
  sha256 "75aaafda447806e623258b2093eba339ec4eadbeb43b632eee24483e41726d81"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end