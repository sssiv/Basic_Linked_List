//
// Created by SamSS
//
#include "list.h"

// Linked List
void linked_list()
{
    LinkedList<int> list;
    for (size_t i = 0; i < 10; ++i) list.makeNewNode(i);
    list += 69;

    std::cout << "Opperator Overload Output" << std::endl;
    std::cout << list << std::endl << std::endl;

    std::cout << "Iterator Output" << std::endl;
    for (auto i : list) std::cout << i << "\t";
}

int main()
{
    linked_list();
	return 0;
}
