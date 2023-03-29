FROM dliu/ubuntu-gcc-valgrind:latest
# here specify the path to the code you want to run
ENV YOUR_PATH /Users/lubojack/School/PRG_tests
COPY . ${YOUR_PATH}
WORKDIR ${YOUR_PATH}
# compiles the code
RUN gcc -pedantic -Wall -Werror -std=c99 -g -o test test.c
# runs the code
CMD ["valgrind", "--leak-check=full", "./test"]