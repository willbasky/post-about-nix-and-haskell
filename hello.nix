let
  pkgs = import <nixpkgs> {};
in
pkgs.stdenv.mkDerivation {
  name = "hello-2.1.1";
  builder = ./builder.sh;
  src = pkgs.fetchurl {
    url = ftp://ftp.nluug.nl/pub/gnu/hello/hello-2.1.1.tar.gz;
    sha256 = "c510e3ad0200517e3a14534e494b37dc0770efd733fc35ce2f445dd49c96a7d5";
  };
  perl = pkgs.perl;
  help2man = pkgs.help2man;
}
