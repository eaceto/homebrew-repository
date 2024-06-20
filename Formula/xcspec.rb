class Xcspec < Formula
  desc "A tool to inspect iOS, macOS and Apple-like frameworks"
  homepage "https://github.com/eaceto/xcspec"
  version "1.1.0"

  if OS.mac?
    if Hardware::CPU.intel?
      url "https://github.com/eaceto/xcspec/releases/download/1.1.0/xcspec-macos-x86_64"
      sha256 "a1e71c0cbdb6fed5c9af0ebc510c9959a4cb2cb1544d4037db502a06714c8bf3"
      def install
        bin.install "xcspec-macos-x86_64" => "xcspec"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/eaceto/xcspec/releases/download/1.1.0/xcspec-macos-arm64"
      sha256 "6b1456cad6d360ecf0f3428f53277700b6c2902e1fe6b7a6fe466c975f704e52"
      def install
        bin.install "xcspec-macos-arm64" => "xcspec"
      end
    end
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/eaceto/xcspec/releases/download/1.1.0/xcspec-linux-x86_64"
      sha256 "8b610e45acca9bda7f645f7fc1d6e9c18cc02bfb90c144ef2ac0c317b844ee18"
      def install
        bin.install "xcspec-linux-x86_64" => "xcspec"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/eaceto/xcspec/releases/download/1.1.0/xcspec-linux-arm64"
      sha256 "720cfa3173db5f3a1d2c59c63fe8723e586820cf8a8098ff8904cc460ee41937"
      def install
        bin.install "xcspec-linux-arm64" => "xcspec"
      end
    end
  elsif OS.windows?
    if Hardware::CPU.intel?
      url "https://github.com/eaceto/xcspec/releases/download/1.1.0/xcspec-windows-x86_64.exe"
      sha256 "327d08eb81984c166a7db9d2d9e9ee34ea4b0e3bf4c77ad902bdd080004e0cae"
      def install
        bin.install "xcspec-windows-x86_64.exe" => "xcspec.exe"
      end
    elsif Hardware::CPU.arm?
      url "https://github.com/eaceto/xcspec/releases/download/1.1.0/xcspec-windows-arm64.exe"
      sha256 "5a37a2248dcdfe58f6d4b69ced937d2d92662918d998eb150ffb591b7704aee0"
      def install
        bin.install "xcspec-windows-arm64.exe" => "xcspec.exe"
      end
    end
  end

  test do
    assert_match "xcspec, version", shell_output("#{bin}/xcspec --version")
  end
end
