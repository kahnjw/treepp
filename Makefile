node_unit_test:
	g++ -Wall -Wextra -std=c++11 -o test/bin/node_unit test/node_unit.cpp

tree_unit_test:
	g++ -Wall -Wextra -std=c++11 -o test/bin/tree_unit test/tree_unit.cpp

stress_test:
	g++ -Wall -Wextra -std=c++11 -o test/bin/stress_test test/stress_test.cpp

testall: clean node_unit_test tree_unit_test stress_test

clean:
	rm -f test/bin/stress_test test/bin/tree_unit test/bin/node_unit

memtest:
	g++ -Wall -Wextra -std=c++11 -g -O0 -o test/bin/memtest test/tree_unit.cpp
