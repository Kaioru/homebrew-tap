require "language/node"

class HookshotCli < Formula
  desc "A webhook manager for discord"
  homepage "https://github.com/Kaioru/Hookshot-CLI#readme"
  url "https://registry.npmjs.org/hookshot-cli/-/hookshot-cli-1.0.6.tgz"
  version "1.0.6"
  sha256 "2bca252318459bc66f8b72c90955e49688cc0b4e6769f5a25225d944808698b3"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
