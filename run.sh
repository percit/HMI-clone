cmake -DCMAKE_PREFIX_PATH=/home/percit/Qt/6.6.0/gcc_64/ -S . -B build -G "Ninja" && cmake --build build --target all && ./build/appHMI-clone