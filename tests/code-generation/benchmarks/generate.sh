#!/bin/bash

echo "LOOP"
cd loop
../../../../eff.native --pure --no-pervasives --compile loop.eff
mv loop.eff.ml loopOptPure.ml
../../../../eff.native --pure --no-opt --no-pervasives --compile loop.eff
mv loop.eff.ml loopNoOptPure.ml
../../../../eff.native --no-pervasives --compile loop.eff
mv loop.eff.ml loopOptImpure.ml
../../../../eff.native --no-opt --no-pervasives --compile loop.eff
mv loop.eff.ml loopNoOptImpure.ml
rm -rf _tmp
cd ..
echo "QUEENS"
cd queens
../../../../eff.native --pure --no-pervasives --compile queens.eff
mv queens.eff.ml queensOptPure.ml
../../../../eff.native --pure --no-opt --no-pervasives --compile queens.eff
mv queens.eff.ml queensNoOptPure.ml
../../../../eff.native --no-pervasives --compile queens.eff
mv queens.eff.ml queensOptImpure.ml
../../../../eff.native --no-opt --no-pervasives --compile queens.eff
mv queens.eff.ml queensNoOptImpure.ml
rm -rf _tmp
cd ..
echo "PARSER"
cd parser
# ../../../../eff.native --pure --no-pervasives --compile parser.eff
# mv parser.eff.ml parserOptPure.ml
../../../../eff.native --pure --no-opt --no-pervasives --compile parser.eff
mv parser.eff.ml parserNoOptPure.ml
../../../../eff.native --no-pervasives --compile parser.eff
mv parser.eff.ml parserOptImpure.ml
../../../../eff.native --no-opt --no-pervasives --compile parser.eff
mv parser.eff.ml parserNoOptImpure.ml
rm -rf _tmp
cd ..
echo "INTERPRETER"
cd interp
# ../../../../eff.native --pure --no-pervasives --compile interp.eff
# mv interp.eff.ml interpOptPure.ml
../../../../eff.native --pure --no-opt --no-pervasives --compile interp.eff
mv interp.eff.ml interpNoOptPure.ml
../../../../eff.native --no-pervasives --compile interp.eff
mv interp.eff.ml interpOptImpure.ml
../../../../eff.native --no-opt --no-pervasives --compile interp.eff
mv interp.eff.ml interpNoOptImpure.ml
rm -rf _tmp
cd ..
echo "FLAT INTERPRETER"
cd interp_flat
# ../../../../eff.native --pure --no-pervasives --compile flat.eff
# mv flat.eff.ml flatOptPure.ml
../../../../eff.native --pure --no-opt --no-pervasives --compile flat.eff
mv flat.eff.ml flatNoOptPure.ml
../../../../eff.native --no-pervasives --compile flat.eff
mv flat.eff.ml flatOptImpure.ml
../../../../eff.native --no-opt --no-pervasives --compile flat.eff
mv flat.eff.ml flatNoOptImpure.ml
rm -rf _tmp
cd ..
