#! /bin/sh
#
#  Sets up the Allegro package for building under BeOS, generating the
#  makefile.inc stub and converting text files from CR/LF to LF format.


echo "Converting Allegro files to BeOS format..."

echo "# generated by fixbe.sh" > makefile
echo "MAKEFILE_INC = makefile.be" >> makefile
echo "include makefile.all " >> makefile

echo "/* generated by fixbe.sh */" > include\allegro\alplatf.h
echo "#include \"albecfg.h\"" >> include\allegro\alplatf.h

find . -type f "(" \
   -name "*.c" -o -name "*.cfg" -o -name "*.cpp" -o -name "*.dep" -o \
   -name "*.h" -o -name "*.hin" -o -name "*.in" -o -name "*.inc" -o \
   -name "*.m4" -o -name "*.mft" -o -name "*.s" -o -name "*.sh" -o \
   -name "*.pl" -o -name "*.txt" -o -name "*._tx" -o \
   -name "makefile.*" -o -name "readme.*" \
   ")" \
   -exec sh -c "echo {};
		mv {} _tmpfile;
		tr -d \\\r < _tmpfile > {};
		touch -r _tmpfile {}; 
		rm _tmpfile" \;

echo "Done!"
