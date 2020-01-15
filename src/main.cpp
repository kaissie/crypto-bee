#include <iostream>
#include <random>

int main(int argc, char const *argv[]) {
  std::cout << "Hello, crypto-bee" << '\n';
  std::random_device rng;
  for (size_t i = 0; i < 10; ++i)
    std::cout << rng() << '\n';
  return 0;
}
