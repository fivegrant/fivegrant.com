# Impure Node.js Environment
with import <nixpkgs> {};

let 
  node = nodejs-14_x;
in

stdenv.mkDerivation rec {
  name = "env";
  env = buildEnv { name = name; paths = buildInputs; };
  buildInputs = [
    gnumake
    node
    sass
 ];

 shellHook = ''
   mkdir -p .npm-global-cache
   npm set prefix $PWD/.npm-global-cache
 '';
}
