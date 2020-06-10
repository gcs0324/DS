#ifndef _List_H_
#define _List_H_
#include "ListNode.h"
typedef int Rank;

template <typename T>
class List {    //列表模板类
private:
    int _size;  //规模
    Posi(T) header; //头哨兵
    Posi(T) trailer;
protected:
    void init();
public:
    /*----------------------只读访问接口--------------------*/
    T& operator[](Rank r) const;
    Posi(T) first() const {
        return header->succ;
    }
    Posi(T) last() const {
        return trailer->pred;
    }

    Posi(T) find(T const& e, int n, Posi(T) p) const;
    
    /*----------------------可写访问接口--------------------*/
    

};

template <typename T>
void List<T>::init() {
    header = new ListNode<T>;
    trailer = new ListNode<T>;
    header->succ = trailer;
    header->pred = NULL;
    trailer->pred = header;
    trailer->succ = NULL;
    _size = 0;
}

template <typename T>
T& List<T>::operator[](Rank r) const{
    Posi(T) p = first();
    while(0 < r--)
        p = p->succ;
    return p->data;
}

template <typename T>
Posi(T) List<T>::find(T const& e, int n, Posi(T) p) const{  //顺序查找，O(n)
    while (0 < n--) {
        p = p->pred;
        if(e == p->data)
            return p;
    }
    return NULL;    //左越界
}

#endif