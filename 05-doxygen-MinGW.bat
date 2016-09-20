cd ../documents
FOR /F "tokens=* USEBACKQ" %%F IN (`git config --get remote.origin.url`) DO (SET remote=%%F)
git clone --depth=5 -b gh-pages %remote% html
cd ../build
mingw32-make -j8 doxygen
cd ../documents/html
git add -A .
git commit -am "Update generated documentation"
git push %remote%
cd ../../scripts
