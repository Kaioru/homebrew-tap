require "language/node"

class DesklyCli < Formula
  desc "the core of a simple reddit desktop image changer"
  homepage "https://github.com/Deskly/deskly-cli#readme"
  url "https://registry.npmjs.org/deskly-cli/-/deskly-cli-1.0.1.tgz"
  version "1.0.1"
  sha256 "5e88f2ac16db836676326549d17029bcaac3e75f3fd69ee42f0a5116f87ab33a"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
