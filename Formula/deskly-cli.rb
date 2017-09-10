require "language/node"

class DesklyCli < Formula
  desc "the core of a simple reddit desktop image changer"
  homepage "https://github.com/Deskly/deskly-cli#readme"
  url "https://registry.npmjs.org/deskly-cli/-/deskly-cli-1.1.0.tgz"
  version "1.1.0"
  sha256 "2d3f7fd79e25f3c4371a951d05f0adef7fea0f9eb87030eb58a4ff1022d9f6a4"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end