#ifndef _Vector_H_
#define _vector_H_

#include <cstdlib>
#include <iostream>
using namespace std;
typedef int Rank; //秩
#define DEFAULT_CAPACITY 3 //默认初始容量

template <typename T>
class Vector
{
private:
   
protected:
    Rank _size;
    int _capacity;
    T* _elem;

    void copyFrom(T const* A, Rank lo, Rank hi);
    void expand();  //扩容策略
    void shrink();  //压缩策略
    Rank binSearch(T* A, T const& e, Rank lo, Rank hi);
    Rank binSearch2(T* A, T const& e, Rank lo, Rank hi);
    Rank binSearch3(T* A, T const& e, Rank lo, Rank hi);
    void bubbleSort(Rank lo, Rank hi);
    Rank bubble(Rank lo, Rank hi);
    void mergeSort(Rank li,Rank hi);
    void merge(Rank lo, Rank mi, Rank hi);

public:
/*===========debug================= */
    void show(int a) {
        cout<<"{ ";
        for(int i=0; i < a; i++)
            cout<<_elem[i]<<" ";
        cout<<"}"<<endl;
    }

    void testmerge() {
        mergeSort(0, _size);
        show(9);
    }
/* 构造函数 */
    Vector(int c = DEFAULT_CAPACITY) {
        _elem = new T[_capacity = c];
        _size = 0;
    }

    Vector(T const* A, Rank lo, Rank hi)    //数组区间复制
    { copyFrom(A, lo, hi); }

    Vector(Vector<T> const& V, Rank lo, Rank hi)    //向量区间复制
    { copyFrom(V._elem, lo, hi); }

    Vector(Vector<T> const& V)  //向量整体复制
    { copyfrom(V._elem, 0, V.size); }

/* 析构函数 */
    ~Vector()
    { delete[] _elem; }

/*----------------------只读访问接口--------------------*/
/* 操作符重载 */
    T& operator[] (Rank r) const;   //重载下标运算符

/* 查找 */
    Rank find(T const & e, Rank lo, Rank hi) const;
    Rank search(T const & e, Rank lo, Rank hi) const;


/* 逆序对 */
    int disordered() const;

/*----------------------可写访问接口--------------------*/

/* 插入 */
    Rank insert(Rank r, T const & e);

/* 删除 */
    int remove(Rank lo, Rank hi);
    T remove(Rank r);

/* 去重 */
    int deduplicate();  //无序向量
    int uniquify(); //有序向量,低效

/* 遍历 */
    void traverse(void (*visit)(T&));    //用函数指针的形式;

    template <typename VST>
    void traverse(VST& visit); //用函数对象的形式

/* 排序 */
    void sort(Rank lo, Rank hi);
};

template <typename T>
void Vector<T>::copyFrom(T const* A, Rank lo, Rank hi) {
    _elem = new T[_capacity = 2*(hi - lo)];
    _size = 0;
    while(lo < hi)
        _elem[_size++] = A[lo++];
}

template <typename T>
void Vector<T>::expand() {
    if(_size < _capacity) return;
    _capacity = max(DEFAULT_CAPACITY, _capacity);
    T* oldelem = _elem;
    _elem = new T(_capacity <<= 1);
    for(int i=0; i < _size; i++)
        _elem[i] = oldelem[i];
    delete[] oldelem;
}

template <typename T>
T& Vector<T>::operator[] (Rank r) const
{ return _elem[r]; }

template <typename T>
Rank Vector<T>::insert(Rank r, T const & e) {
    expand();
    for(int i = _size; i > r; i--)
        _elem[i] = _elem[i-1];
    _elem[r]=e;
    _size++;
    return r;
}

template <typename T>
int Vector<T>::remove(Rank lo, Rank hi) {
    if(lo == hi) return 0;
    while(hi < _size)
        _elem[lo++] = _elem[hi++];
    _size = lo;
    return hi-lo;
}

template <typename T>
Rank Vector<T>::find(T const & e, Rank lo, Rank hi) const {
    while((lo < hi--) && (e != _elem[hi]));
    return hi;
}

template <typename T>
T Vector<T>::remove(Rank r) {
    T a = _elem[r];
    remove(r, r + 1);
    return a;
}

//无序向量，低效版去重
template <typename T>   //删除重复元素，返回删除元素的规模
int Vector<T>::deduplicate() {
    int _oldsize = _size;
    Rank i = 1; //从_elem[1]开始
    while(i < _size)    //自前向后逐一考查各元素_elem[i]    
        (find(_elem[i], 0, i) < 0) ? //在前缀中寻找相等的
            i++ : //若无相等则继续考察其后继
            remove(i);  //有相等则删除当前元素
    return _oldsize - _size;    //返回删除元素总数
}

template <typename T> 
void Vector<T>::traverse(void (*visit)(T&)) { 
    for(int i=0; i < _size; i++) 
        visit(_elem[i]); 
}

template <typename T> template <typename VST>
void Vector<T>::traverse(VST& visit) {
    for(int i = 0; i < _size; i++)
        visit(_elem[i]); 
}

template <typename T>   //返回逆序相邻元素对的总数
int Vector<T>::disordered() const {
    int i=0;    //计数器
    for(int i = 1; i < _size; i++)  //逐一检查各对相邻元素
        i += (_elem[i - 1] > _elem[i]);
    return i;
}

//有序向量，低效去重
/*
//最坏的情况，每次都要调用remove(),累计O(n^2)
template <typename T>   
int Vector<T>::uniquify(){
    int oldsize = _size;
    int i = 0;
    while(i < _size-1)
        (_elem[i] == _elem[i+1]) ? remove(i+1) : i++;
    return oldsize-_size;
}
*/

template <typename T>
int Vector<T>::uniquify() {
    Rank i = 0, j = 0;
    while(++j < _size) {
        if(_elem[i] != _elem[j])
            _elem[++i] = _elem[j];
    _size = ++i;
    shrink();
    return j - i;
    }
}

template <typename T>
Rank Vector<T>::search(T const & e, Rank lo, Rank hi) const {
    return (rand() % 2) ?
        binSearch(_elem, e, lo, hi) :
        finSearch(_elem, e, lo, hi);
}

template<typename T>
void Vector<T>::shrink() {
    if(_size >= (_capacity >> 1))
        return;
    _capacity >>= 1;
    _capacity = max(_capacity, DEFAULT_CAPACITY);
    T* old = _elem;
    _elem = new T[_capacity];
    for (int i = 0; i < _size; ++i) {
        _elem[i] = old[i];
    }
    delete [] old;
}

template<typename T>
Rank Vector<T>::binSearch(T* A, T const& e, Rank lo, Rank hi) {
    while(lo < hi) {
        Rank mid = (lo + hi)>>1;
        if(e < A[mid])
            hi = mid;
        else if(A[mid] < e)
            lo = mid + 1;
        else
            return mid;
    }
    return -1;
}
/*1
    1   2   2   3   4   5
                .
                    .
*/
template<typename T>
Rank Vector<T>::binSearch2(T* A, T const& e, Rank lo, Rank hi) {
    while(1 < hi - lo) {
        Rank mi = (lo + hi) >> 1;
        (e < A[mi]) ? hi = mi : lo = mi;
    }
    return (e == A[lo]) ? lo : -1;
}

template<typename T>
Rank Vector<T>::binSearch3(T* A, T const& e, Rank lo, Rank hi) {
    while(lo < hi) {
        Rank mi = (lo + hi) >> 1;
        (e < A[mi]) ? hi = mi : mi + 1;
    }
    return --lo;
}

template<typename T>
void Vector<T>::sort(Rank lo, Rank hi) {
    switch (rand() % 5) {
        case 1:
            bubbleSort(lo, hi);
            break;
       /* case 2:
            selectionSort(lo, hi);
            break;
        case 3:
            mergeSort(lo, hi);
            break;
        case 4:
            heapSort(lo, hi);
            break;
        default:
            quickSort(lo, hi);
            break;*/
    }
}

template<typename T>
void Vector<T>::bubbleSort(Rank lo, Rank hi) {
    while (lo < (hi = bubble(lo, hi)));
}

template<typename T>
Rank Vector<T>::bubble(Rank lo, Rank hi) {
    Rank last = lo;
    while (++lo < hi)
        if(_elem[lo - 1] > _elem[lo]) {
            last = lo;
            swap(_elem[lo - 1], _elem[lo]);
        }
    return last;
}

template<typename T>
void Vector<T>::mergeSort(Rank lo, Rank hi) {
    if(hi - lo < 2) return;
    int mi = (lo + hi) >> 1; //以中点为界
    mergeSort(lo, mi);  //对前半段排序
    mergeSort(mi, hi);  //对后半段排序
    merge(lo, mi, hi);  //归并
}

template<typename T>
void Vector<T>::merge(Rank lo, Rank mi, Rank hi) {
    T* A = _elem + lo;
    int lb = mi - lo;
    T* B = new T[lb];
    
    for(Rank i=0; i < lb; i++)
        B[i++] = A[i];
    
    int lc = hi - mi;
    T* C = _elem + mi;
    
    Rank i = 0, j = 0, k = 0;
    while(j < lb && k < lc) {
        (B[j] <= C[k]) ? A[i++] = B[j++] : A[i++] = C[k++];
    }

    while(j < lb)
        A[i++] = B[j++];
    while(k < lc)
        A[i++] = C[k++];
    delete [] B;
}
#endif