#ifndef _ListNode_H_
#define _ListNode_H_
#include <iostream>
#define Posi(T) ListNode<T>*

template <typename T>
struct ListNode {   //列表节点模板类(以双向列表形式实现)
    T data; //数值
    Posi(T) pred;   //后继
    Posi(T) succ;   //前驱
    ListNode() {}   //针对header和 trailer的构造
    ListNode(T e, Posi(T) p = NULL, Posi(T) s = NULL) 
            : data(e), pred(p), succ(s) {}  //默认构造器
    Posi(T) insertAsPred(T const& e);   //前插入
    Posi(T) insertAsSucc(T const& e);   //后插入
};
/*
    pred, this, succ

    pred, x, this
*/
template <typename T>
Posi(T) ListNode<T>::insertAsPred(T const& e) {
   Posi(T) x = new ListNode(e, pred, this);
   pred->succ = x;
   pred = x;
   return x;
}

template <typename T>
Posi(T) ListNode<T>::insertAsSucc(T const& e) {
    Posi(T) x = new ListNode(e, this, succ);
    succ->pred = x;
    succ = x;
    return x;
}
#endif