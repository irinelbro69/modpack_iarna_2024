package="lzlib"
version="0.4.1.53-1"
source = {
   url = "git://github.com/THE-FYP/lzlib",
   branch = "lzlib-static",
}
description = {
   summary = "Lua bindings to the ZLib compression library",
   detailed = [[
      This package provides a library to access zlib library functions
      and also to read/write gzip files using an interface similar
      to the base io package.
   ]],
   homepage = "http://luaforge.net/projects/lzlib/",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
external_dependencies = {
   ZLIB = {
      header = "zlib.h",
   }
}
build = {
   type = "builtin",
   modules = {
      zlib = {
         sources = "lzlib.c",
         libdirs = "$(ZLIB_LIBDIR)",
         incdirs = "$(ZLIB_INCDIR)",
         libraries = "zlibstatic",
      },
      gzip = "gzip.lua",
   }
}
