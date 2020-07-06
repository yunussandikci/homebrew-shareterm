class SharetermCli < Formula
  desc "Easiest way of sharing terminal logs!"
  homepage ""
  url "https://github.com/yunussandikci/shareterm/archive/v0.0.4.tar.gz"
  sha256 "7d45492e9e8b78b8bb1a25ab42cabacedbd8e629362163d89759457be1e7a733"
  license ""
  depends_on "go" => :build

  def install
      ENV["GOPATH"] = buildpath
      bin_path = buildpath/"src/github.com/yunussandikci/shareterm"
      bin_path.installa Dir["*"]
      cd bin_path/"cli" do
        system "go", "build", "-o", bin/"shareterm", "."
      end
  end

  test do
    system "false"
  end
end
