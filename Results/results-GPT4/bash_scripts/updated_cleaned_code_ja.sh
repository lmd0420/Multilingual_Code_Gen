#!/bin/bash

# Test 0
def remove_Occ(s, ch):
    first_occ = s.find(ch)
    last_occ = s.rfind(ch)
    if first_occ != -1 and last_occ != -1:
        s = s[:first_occ] + s[first_occ+1:last_occ] + s[last_occ+1:]
    return s

if [ $(python -c "def remove_Occ(s, ch):
    first_occ = s.find(ch)
    last_occ = s.rfind(ch)
    if first_occ != -1 and last_occ != -1:
        s = s[:first_occ] + s[first_occ+1:last_occ] + s[last_occ+1:]
    return s; print(remove_Occ("hello","l"))") == heo ]
then
    echo "Test 0 passed"
else
    echo "Test 0 failed"
fi

if [ $(python -c "def remove_Occ(s, ch):
    first_occ = s.find(ch)
    last_occ = s.rfind(ch)
    if first_occ != -1 and last_occ != -1:
        s = s[:first_occ] + s[first_occ+1:last_occ] + s[last_occ+1:]
    return s; print(remove_Occ("abcda","a"))") == bcd ]
then
    echo "Test 0 passed"
else
    echo "Test 0 failed"
fi

if [ $(python -c "def remove_Occ(s, ch):
    first_occ = s.find(ch)
    last_occ = s.rfind(ch)
    if first_occ != -1 and last_occ != -1:
        s = s[:first_occ] + s[first_occ+1:last_occ] + s[last_occ+1:]
    return s; print(remove_Occ("PHP","P"))") == H ]
then
    echo "Test 0 passed"
else
    echo "Test 0 failed"
fi

# Test 1
def sort_matrix(matrix):
    return sorted(matrix, key=sum)

# Test 2
def find_Volume(base, height, length):
    return 0.5 * base * height * length

if [ $(python -c "def find_Volume(base, height, length):
    return 0.5 * base * height * length; print(find_Volume(10,8,6))") == 240 ]
then
    echo "Test 2 passed"
else
    echo "Test 2 failed"
fi

if [ $(python -c "def find_Volume(base, height, length):
    return 0.5 * base * height * length; print(find_Volume(3,2,2))") == 6 ]
then
    echo "Test 2 passed"
else
    echo "Test 2 failed"
fi

if [ $(python -c "def find_Volume(base, height, length):
    return 0.5 * base * height * length; print(find_Volume(1,2,1))") == 1 ]
then
    echo "Test 2 passed"
else
    echo "Test 2 failed"
fi

# Test 3
def text_lowercase_underscore(s):
    return s.islower() and "_" in s

# Test 4
def square_perimeter(side_length):
    return 4 * side_length

# Test 5
def remove_dirty_chars(s1, s2):
    return ''.join(c for c in s1 if c not in s2)

if [ $(python -c "def remove_dirty_chars(s1, s2):
    return ''.join(c for c in s1 if c not in s2); print(remove_dirty_chars("probasscurve", "pros"))") == bacuve ]
then
    echo "Test 5 passed"
else
    echo "Test 5 failed"
fi

if [ $(python -c "def remove_dirty_chars(s1, s2):
    return ''.join(c for c in s1 if c not in s2); print(remove_dirty_chars("digitalindia", "talent"))") == digiidi ]
then
    echo "Test 5 passed"
else
    echo "Test 5 failed"
fi

if [ $(python -c "def remove_dirty_chars(s1, s2):
    return ''.join(c for c in s1 if c not in s2); print(remove_dirty_chars("exoticmiles", "toxic"))") == emles ]
then
    echo "Test 5 passed"
else
    echo "Test 5 failed"
fi

# Test 6
def test_duplicate(arr):
    return len(arr) != len(set(arr))

# Test 7
def is_woodall(num):
    n = 1
    while True:
        woodall = 2**n * n
        if woodall == num:
            return True
        elif woodall > num:
            return False
        n += 1

if [ $(python -c "def is_woodall(num):
    n = 1
    while True:
        woodall = 2**n * n
        if woodall == num:
            return True
        elif woodall > num:
            return False
        n += 1; print(is_woodall(383))") == True ]
then
    echo "Test 7 passed"
else
    echo "Test 7 failed"
fi

if [ $(python -c "def is_woodall(num):
    n = 1
    while True:
        woodall = 2**n * n
        if woodall == num:
            return True
        elif woodall > num:
            return False
        n += 1; print(is_woodall(254))") == False ]
then
    echo "Test 7 passed"
else
    echo "Test 7 failed"
fi

if [ $(python -c "def is_woodall(num):
    n = 1
    while True:
        woodall = 2**n * n
        if woodall == num:
            return True
        elif woodall > num:
            return False
        n += 1; print(is_woodall(200))") == False ]
then
    echo "Test 7 passed"
else
    echo "Test 7 failed"
fi

# Test 8
def check(n):
    # 数値を文字列に変換し、逆順にする
    reversed_n = str(n)[::-1]
    
    # 逆順にした文字列を再度数値に変換し、2倍する
    double_reversed_n = int(reversed_n) * 2
    
    # 元の数値が逆順にした数値の2倍より1小さいかどうかを確認する
    return n == double_reversed_n - 1

if [ $(python -c "def check(n):
    # 数値を文字列に変換し、逆順にする
    reversed_n = str(n)[::-1]
    
    # 逆順にした文字列を再度数値に変換し、2倍する
    double_reversed_n = int(reversed_n) * 2
    
    # 元の数値が逆順にした数値の2倍より1小さいかどうかを確認する
    return n == double_reversed_n - 1; print(check(70))") == False ]
then
    echo "Test 8 passed"
else
    echo "Test 8 failed"
fi

if [ $(python -c "def check(n):
    # 数値を文字列に変換し、逆順にする
    reversed_n = str(n)[::-1]
    
    # 逆順にした文字列を再度数値に変換し、2倍する
    double_reversed_n = int(reversed_n) * 2
    
    # 元の数値が逆順にした数値の2倍より1小さいかどうかを確認する
    return n == double_reversed_n - 1; print(check(23))") == False ]
then
    echo "Test 8 passed"
else
    echo "Test 8 failed"
fi

if [ $(python -c "def check(n):
    # 数値を文字列に変換し、逆順にする
    reversed_n = str(n)[::-1]
    
    # 逆順にした文字列を再度数値に変換し、2倍する
    double_reversed_n = int(reversed_n) * 2
    
    # 元の数値が逆順にした数値の2倍より1小さいかどうかを確認する
    return n == double_reversed_n - 1; print(check(73))") == True ]
then
    echo "Test 8 passed"
else
    echo "Test 8 failed"
fi

# Test 9
def find_Max_Num(lst):
    # 数字を文字列に変換し、リストを逆順にソート
    lst = sorted([str(i) for i in lst], reverse=True)
    # 文字列を結合して数値に変換
    return int(''.join(lst))

if [ $(python -c "def find_Max_Num(lst):
    # 数字を文字列に変換し、リストを逆順にソート
    lst = sorted([str(i) for i in lst], reverse=True)
    # 文字列を結合して数値に変換
    return int(''.join(lst)); print(find_Max_Num([1,2,3]))") == 321 ]
then
    echo "Test 9 passed"
else
    echo "Test 9 failed"
fi

if [ $(python -c "def find_Max_Num(lst):
    # 数字を文字列に変換し、リストを逆順にソート
    lst = sorted([str(i) for i in lst], reverse=True)
    # 文字列を結合して数値に変換
    return int(''.join(lst)); print(find_Max_Num([4,5,6,1]))") == 6541 ]
then
    echo "Test 9 passed"
else
    echo "Test 9 failed"
fi

if [ $(python -c "def find_Max_Num(lst):
    # 数字を文字列に変換し、リストを逆順にソート
    lst = sorted([str(i) for i in lst], reverse=True)
    # 文字列を結合して数値に変換
    return int(''.join(lst)); print(find_Max_Num([1,2,3,9]))") == 9321 ]
then
    echo "Test 9 passed"
else
    echo "Test 9 failed"
fi

# Test 10
def opposite_Signs(a, b):
    return a * b < 0

if [ $(python -c "def opposite_Signs(a, b):
    return a * b < 0; print(opposite_Signs(1,-2))") == True ]
then
    echo "Test 10 passed"
else
    echo "Test 10 failed"
fi

if [ $(python -c "def opposite_Signs(a, b):
    return a * b < 0; print(opposite_Signs(3,2))") == False ]
then
    echo "Test 10 passed"
else
    echo "Test 10 failed"
fi

if [ $(python -c "def opposite_Signs(a, b):
    return a * b < 0; print(opposite_Signs(-10,-10))") == False ]
then
    echo "Test 10 passed"
else
    echo "Test 10 failed"
fi

if [ $(python -c "def opposite_Signs(a, b):
    return a * b < 0; print(opposite_Signs(-2,2))") == True ]
then
    echo "Test 10 passed"
else
    echo "Test 10 failed"
fi

# Test 11
def is_octagonal(n):
    return n * (3*n - 2)

if [ $(python -c "def is_octagonal(n):
    return n * (3*n - 2); print(is_octagonal(5))") == 65 ]
then
    echo "Test 11 passed"
else
    echo "Test 11 failed"
fi

if [ $(python -c "def is_octagonal(n):
    return n * (3*n - 2); print(is_octagonal(10))") == 280 ]
then
    echo "Test 11 passed"
else
    echo "Test 11 failed"
fi

if [ $(python -c "def is_octagonal(n):
    return n * (3*n - 2); print(is_octagonal(15))") == 645 ]
then
    echo "Test 11 passed"
else
    echo "Test 11 failed"
fi

# Test 12
def count_Substrings(s):
    count = 0
    for i in range(len(s)):
        for j in range(i+1, len(s)+1):
            substring = s[i:j]
            if sum(int(digit) for digit in substring) == len(substring):
                count += 1
    return count

if [ $(python -c "def count_Substrings(s):
    count = 0
    for i in range(len(s)):
        for j in range(i+1, len(s)+1):
            substring = s[i:j]
            if sum(int(digit) for digit in substring) == len(substring):
                count += 1
    return count; print(count_Substrings('112112'))") == 6 ]
then
    echo "Test 12 passed"
else
    echo "Test 12 failed"
fi

if [ $(python -c "def count_Substrings(s):
    count = 0
    for i in range(len(s)):
        for j in range(i+1, len(s)+1):
            substring = s[i:j]
            if sum(int(digit) for digit in substring) == len(substring):
                count += 1
    return count; print(count_Substrings('111'))") == 6 ]
then
    echo "Test 12 passed"
else
    echo "Test 12 failed"
fi

if [ $(python -c "def count_Substrings(s):
    count = 0
    for i in range(len(s)):
        for j in range(i+1, len(s)+1):
            substring = s[i:j]
            if sum(int(digit) for digit in substring) == len(substring):
                count += 1
    return count; print(count_Substrings('1101112'))") == 12 ]
then
    echo "Test 12 passed"
else
    echo "Test 12 failed"
fi

# Test 13
def smallest_num(lst):
    return min(lst)

if [ $(python -c "def smallest_num(lst):
    return min(lst); print(smallest_num([10, 20, 1, 45, 99]))") == 1 ]
then
    echo "Test 13 passed"
else
    echo "Test 13 failed"
fi

if [ $(python -c "def smallest_num(lst):
    return min(lst); print(smallest_num([1, 2, 3]))") == 1 ]
then
    echo "Test 13 passed"
else
    echo "Test 13 failed"
fi

if [ $(python -c "def smallest_num(lst):
    return min(lst); print(smallest_num([45, 46, 50, 60]))") == 45 ]
then
    echo "Test 13 passed"
else
    echo "Test 13 failed"
fi

# Test 14
def max_difference(lst):
    min_val = min(min(x) for x in lst)
    max_val = max(max(x) for x in lst)
    return max_val - min_val

if [ $(python -c "def max_difference(lst):
    min_val = min(min(x) for x in lst)
    max_val = max(max(x) for x in lst)
    return max_val - min_val; print(max_difference([(3, 5), (1, 7), (10, 3), (1, 2)]))") == 7 ]
then
    echo "Test 14 passed"
else
    echo "Test 14 failed"
fi

if [ $(python -c "def max_difference(lst):
    min_val = min(min(x) for x in lst)
    max_val = max(max(x) for x in lst)
    return max_val - min_val; print(max_difference([(4, 6), (2, 17), (9, 13), (11, 12)]))") == 15 ]
then
    echo "Test 14 passed"
else
    echo "Test 14 failed"
fi

if [ $(python -c "def max_difference(lst):
    min_val = min(min(x) for x in lst)
    max_val = max(max(x) for x in lst)
    return max_val - min_val; print(max_difference([(12, 35), (21, 27), (13, 23), (41, 22)]))") == 23 ]
then
    echo "Test 14 passed"
else
    echo "Test 14 failed"
fi

# Test 15
def subject_marks(lst):
    return sorted(lst, key=lambda x: x[1])

# Test 16
def recursive_list_sum(data_list):
    total = 0
    for element in data_list:
        if type(element) == type([]):
            total = total + recursive_list_sum(element)
        else:
            total = total + element
    return total

# Test 17
def pos_count(lst):
    return len([num for num in lst if num > 0])

if [ $(python -c "def pos_count(lst):
    return len([num for num in lst if num > 0]); print(pos_count([1,-2,3,-4]))") == 2 ]
then
    echo "Test 17 passed"
else
    echo "Test 17 failed"
fi

if [ $(python -c "def pos_count(lst):
    return len([num for num in lst if num > 0]); print(pos_count([3,4,5,-1]))") == 3 ]
then
    echo "Test 17 passed"
else
    echo "Test 17 failed"
fi

if [ $(python -c "def pos_count(lst):
    return len([num for num in lst if num > 0]); print(pos_count([1,2,3,4]))") == 4 ]
then
    echo "Test 17 passed"
else
    echo "Test 17 failed"
fi

# Test 18
def bell_number(n):
    bell = [[0 for i in range(n+1)] for j in range(n+1)]
    bell[0][0] = 1
    for i in range(1, n+1):
        bell[i][0] = bell[i-1][i-1]
        for j in range(1, i+1):
            bell[i][j] = bell[i-1][j-1] + bell[i][j-1]
    return bell[n][0]

# Test 19
def is_Monotonic(array):
    if len(array) < 2:
        return True
    is_increasing = array[1] >= array[0]
    for i in range(2, len(array)):
        if (array[i] >= array[i-1]) != is_increasing:
            return False
    return True

if [ $(python -c "def is_Monotonic(array):
    if len(array) < 2:
        return True
    is_increasing = array[1] >= array[0]
    for i in range(2, len(array)):
        if (array[i] >= array[i-1]) != is_increasing:
            return False
    return True; print(is_Monotonic([6, 5, 4, 4]))") == True ]
then
    echo "Test 19 passed"
else
    echo "Test 19 failed"
fi

if [ $(python -c "def is_Monotonic(array):
    if len(array) < 2:
        return True
    is_increasing = array[1] >= array[0]
    for i in range(2, len(array)):
        if (array[i] >= array[i-1]) != is_increasing:
            return False
    return True; print(is_Monotonic([1, 2, 2, 3]))") == True ]
then
    echo "Test 19 passed"
else
    echo "Test 19 failed"
fi

if [ $(python -c "def is_Monotonic(array):
    if len(array) < 2:
        return True
    is_increasing = array[1] >= array[0]
    for i in range(2, len(array)):
        if (array[i] >= array[i-1]) != is_increasing:
            return False
    return True; print(is_Monotonic([1, 3, 2]))") == False ]
then
    echo "Test 19 passed"
else
    echo "Test 19 failed"
fi

# Test 20
def is_sublist(list1, sublist):
    len_sublist = len(sublist)
    for i in range(len(list1)):
        if list1[i:i+len_sublist] == sublist:
            return True
    return False

# Test 21
def get_equal(tuples):
    return all(len(t) == len(tuples[0]) for t in tuples)

if [ $(python -c "def get_equal(tuples):
    return all(len(t) == len(tuples[0]) for t in tuples); print(get_equal([(11, 22, 33), (44, 55, 66)]))") == True ]
then
    echo "Test 21 passed"
else
    echo "Test 21 failed"
fi

if [ $(python -c "def get_equal(tuples):
    return all(len(t) == len(tuples[0]) for t in tuples); print(get_equal([(1, 2, 3), (4, 5, 6, 7)]))") == False ]
then
    echo "Test 21 passed"
else
    echo "Test 21 failed"
fi

if [ $(python -c "def get_equal(tuples):
    return all(len(t) == len(tuples[0]) for t in tuples); print(get_equal([(1, 2), (3, 4)]))") == True ]
then
    echo "Test 21 passed"
else
    echo "Test 21 failed"
fi

# Test 22
def comb_sort(lst):
    gap = len(lst)
    shrink = 1.3
    sorted = False

    while not sorted:
        gap = int(gap / shrink)

        if gap <= 1:
            gap = 1
            sorted = True

        i = 0
        while i + gap < len(lst):
            if lst[i] > lst[i + gap]:
                lst[i], lst[i + gap] = lst[i + gap], lst[i]
                sorted = False
            i += 1

    return lst

if [ $(python -c "def comb_sort(lst):
    gap = len(lst)
    shrink = 1.3
    sorted = False

    while not sorted:
        gap = int(gap / shrink)

        if gap <= 1:
            gap = 1
            sorted = True

        i = 0
        while i + gap < len(lst):
            if lst[i] > lst[i + gap]:
                lst[i], lst[i + gap] = lst[i + gap], lst[i]
                sorted = False
            i += 1

    return lst; print(comb_sort([5, 15, 37, 25, 79]))") == [5, 15, 25, 37, 79] ]
then
    echo "Test 22 passed"
else
    echo "Test 22 failed"
fi

if [ $(python -c "def comb_sort(lst):
    gap = len(lst)
    shrink = 1.3
    sorted = False

    while not sorted:
        gap = int(gap / shrink)

        if gap <= 1:
            gap = 1
            sorted = True

        i = 0
        while i + gap < len(lst):
            if lst[i] > lst[i + gap]:
                lst[i], lst[i + gap] = lst[i + gap], lst[i]
                sorted = False
            i += 1

    return lst; print(comb_sort([41, 32, 15, 19, 22]))") == [15, 19, 22, 32, 41] ]
then
    echo "Test 22 passed"
else
    echo "Test 22 failed"
fi

if [ $(python -c "def comb_sort(lst):
    gap = len(lst)
    shrink = 1.3
    sorted = False

    while not sorted:
        gap = int(gap / shrink)

        if gap <= 1:
            gap = 1
            sorted = True

        i = 0
        while i + gap < len(lst):
            if lst[i] > lst[i + gap]:
                lst[i], lst[i + gap] = lst[i + gap], lst[i]
                sorted = False
            i += 1

    return lst; print(comb_sort([99, 15, 13, 47]))") == [13, 15, 47, 99] ]
then
    echo "Test 22 passed"
else
    echo "Test 22 failed"
fi

# Test 23
def dif_Square(n):
    i = 0
    while i * i <= n:
        j = 0
        while j * j <= n:
            if i * i - j * j == n:
                return True
            j += 1
        i += 1
    return False

if [ $(python -c "def dif_Square(n):
    i = 0
    while i * i <= n:
        j = 0
        while j * j <= n:
            if i * i - j * j == n:
                return True
            j += 1
        i += 1
    return False; print(dif_Square(5))") == True ]
then
    echo "Test 23 passed"
else
    echo "Test 23 failed"
fi

if [ $(python -c "def dif_Square(n):
    i = 0
    while i * i <= n:
        j = 0
        while j * j <= n:
            if i * i - j * j == n:
                return True
            j += 1
        i += 1
    return False; print(dif_Square(10))") == False ]
then
    echo "Test 23 passed"
else
    echo "Test 23 failed"
fi

if [ $(python -c "def dif_Square(n):
    i = 0
    while i * i <= n:
        j = 0
        while j * j <= n:
            if i * i - j * j == n:
                return True
            j += 1
        i += 1
    return False; print(dif_Square(15))") == True ]
then
    echo "Test 23 passed"
else
    echo "Test 23 failed"
fi

# Test 24
def is_samepatterns(arr1, arr2):
    if len(arr1) != len(arr2):
        return False
    dict1 = {}
    dict2 = {}
    for i in range(len(arr1)):
        if arr1[i] in dict1:
            if dict2[arr2[i]] != dict1[arr1[i]]:
                return False
        else:
            if arr2[i] in dict2:
                return False
            dict1[arr1[i]] = i
            dict2[arr2[i]] = i
    return True

# Test 25
def find_tuples(lst, k):
    return [t for t in lst if all(i % k == 0 for i in t)]

if [ $(python -c "def find_tuples(lst, k):
    return [t for t in lst if all(i % k == 0 for i in t)]; print(find_tuples([(6, 24, 12), (7, 9, 6), (12, 18, 21)], 6))") == [(6, 24, 12)] ]
then
    echo "Test 25 passed"
else
    echo "Test 25 failed"
fi

if [ $(python -c "def find_tuples(lst, k):
    return [t for t in lst if all(i % k == 0 for i in t)]; print(find_tuples([(5, 25, 30), (4, 2, 3), (7, 8, 9)], 5))") == [(5, 25, 30)] ]
then
    echo "Test 25 passed"
else
    echo "Test 25 failed"
fi

if [ $(python -c "def find_tuples(lst, k):
    return [t for t in lst if all(i % k == 0 for i in t)]; print(find_tuples([(7, 9, 16), (8, 16, 4), (19, 17, 18)], 4))") == [(8, 16, 4)] ]
then
    echo "Test 25 passed"
else
    echo "Test 25 failed"
fi

# Test 26
def is_Diff(n):
    return n % 11 == 0

if [ $(python -c "def is_Diff(n):
    return n % 11 == 0; print(is_Diff(12345))") == False ]
then
    echo "Test 26 passed"
else
    echo "Test 26 failed"
fi

if [ $(python -c "def is_Diff(n):
    return n % 11 == 0; print(is_Diff(1212112))") == True ]
then
    echo "Test 26 passed"
else
    echo "Test 26 failed"
fi

if [ $(python -c "def is_Diff(n):
    return n % 11 == 0; print(is_Diff(1212))") == False ]
then
    echo "Test 26 passed"
else
    echo "Test 26 failed"
fi

# Test 27
def word_len(word):
    return len(word) % 2 != 0

if [ $(python -c "def word_len(word):
    return len(word) % 2 != 0; print(word_len("Hadoop"))") == False ]
then
    echo "Test 27 passed"
else
    echo "Test 27 failed"
fi

if [ $(python -c "def word_len(word):
    return len(word) % 2 != 0; print(word_len("great"))") == True ]
then
    echo "Test 27 passed"
else
    echo "Test 27 failed"
fi

if [ $(python -c "def word_len(word):
    return len(word) % 2 != 0; print(word_len("structure"))") == True ]
then
    echo "Test 27 passed"
else
    echo "Test 27 failed"
fi

# Test 28
def tetrahedral_number(n):
    return n*(n+1)*(n+2)//6

if [ $(python -c "def tetrahedral_number(n):
    return n*(n+1)*(n+2)//6; print(tetrahedral_number(5))") == 35 ]
then
    echo "Test 28 passed"
else
    echo "Test 28 failed"
fi

if [ $(python -c "def tetrahedral_number(n):
    return n*(n+1)*(n+2)//6; print(tetrahedral_number(6))") == 56 ]
then
    echo "Test 28 passed"
else
    echo "Test 28 failed"
fi

if [ $(python -c "def tetrahedral_number(n):
    return n*(n+1)*(n+2)//6; print(tetrahedral_number(7))") == 84 ]
then
    echo "Test 28 passed"
else
    echo "Test 28 failed"
fi

# Test 29
import math

def volume_sphere(radius):
    return 4/3 * math.pi * radius**3

# Test 30
def get_Char(s):
    total = 0
    for char in s:
        total += ord(char)
    return chr((total % 26) + ord('a'))

if [ $(python -c "def get_Char(s):
    total = 0
    for char in s:
        total += ord(char)
    return chr((total % 26) + ord('a')); print(get_Char("abc"))") == f ]
then
    echo "Test 30 passed"
else
    echo "Test 30 failed"
fi

if [ $(python -c "def get_Char(s):
    total = 0
    for char in s:
        total += ord(char)
    return chr((total % 26) + ord('a')); print(get_Char("gfg"))") == t ]
then
    echo "Test 30 passed"
else
    echo "Test 30 failed"
fi

if [ $(python -c "def get_Char(s):
    total = 0
    for char in s:
        total += ord(char)
    return chr((total % 26) + ord('a')); print(get_Char("ab"))") == c ]
then
    echo "Test 30 passed"
else
    echo "Test 30 failed"
fi

# Test 31
def sequence(n):
    if n == 1 or n == 2:
        return 1
    else:
        seq = [0, 1, 1] + [0] * (n - 2)
        for i in range(3, n + 1):
            seq[i] = seq[seq[i - 1]] + seq[i - seq[i - 1]]
        return seq[n]

if [ $(python -c "def sequence(n):
    if n == 1 or n == 2:
        return 1
    else:
        seq = [0, 1, 1] + [0] * (n - 2)
        for i in range(3, n + 1):
            seq[i] = seq[seq[i - 1]] + seq[i - seq[i - 1]]
        return seq[n]; print(sequence(10))") == 6 ]
then
    echo "Test 31 passed"
else
    echo "Test 31 failed"
fi

if [ $(python -c "def sequence(n):
    if n == 1 or n == 2:
        return 1
    else:
        seq = [0, 1, 1] + [0] * (n - 2)
        for i in range(3, n + 1):
            seq[i] = seq[seq[i - 1]] + seq[i - seq[i - 1]]
        return seq[n]; print(sequence(2))") == 1 ]
then
    echo "Test 31 passed"
else
    echo "Test 31 failed"
fi

if [ $(python -c "def sequence(n):
    if n == 1 or n == 2:
        return 1
    else:
        seq = [0, 1, 1] + [0] * (n - 2)
        for i in range(3, n + 1):
            seq[i] = seq[seq[i - 1]] + seq[i - seq[i - 1]]
        return seq[n]; print(sequence(3))") == 2 ]
then
    echo "Test 31 passed"
else
    echo "Test 31 failed"
fi

# Test 32
import math

def surfacearea_sphere(radius):
    return 4 * math.pi * radius ** 2

# Test 33
def centered_hexagonal_number(n):
    return 3*n*(n-1) + 1

if [ $(python -c "def centered_hexagonal_number(n):
    return 3*n*(n-1) + 1; print(centered_hexagonal_number(10))") == 271 ]
then
    echo "Test 33 passed"
else
    echo "Test 33 failed"
fi

if [ $(python -c "def centered_hexagonal_number(n):
    return 3*n*(n-1) + 1; print(centered_hexagonal_number(2))") == 7 ]
then
    echo "Test 33 passed"
else
    echo "Test 33 failed"
fi

if [ $(python -c "def centered_hexagonal_number(n):
    return 3*n*(n-1) + 1; print(centered_hexagonal_number(9))") == 217 ]
then
    echo "Test 33 passed"
else
    echo "Test 33 failed"
fi

# Test 34
def merge_dictionaries_three(dict1, dict2, dict3):
    result = {}
    result.update(dict1)
    result.update(dict2)
    result.update(dict3)
    return result

# Test 35
def freq_count(lst):
    freq_dict = {}
    for i in lst:
        if i in freq_dict:
            freq_dict[i] += 1
        else:
            freq_dict[i] = 1
    return freq_dict

# Test 36
def closest_num(n):
    return n - 1

if [ $(python -c "def closest_num(n):
    return n - 1; print(closest_num(11))") == 10 ]
then
    echo "Test 36 passed"
else
    echo "Test 36 failed"
fi

if [ $(python -c "def closest_num(n):
    return n - 1; print(closest_num(7))") == 6 ]
then
    echo "Test 36 passed"
else
    echo "Test 36 failed"
fi

if [ $(python -c "def closest_num(n):
    return n - 1; print(closest_num(12))") == 11 ]
then
    echo "Test 36 passed"
else
    echo "Test 36 failed"
fi

# Test 37
def len_log(words):
    return max(len(word) for word in words)

if [ $(python -c "def len_log(words):
    return max(len(word) for word in words); print(len_log(["python","PHP","bigdata"]))") == 7 ]
then
    echo "Test 37 passed"
else
    echo "Test 37 failed"
fi

if [ $(python -c "def len_log(words):
    return max(len(word) for word in words); print(len_log(["a","ab","abc"]))") == 3 ]
then
    echo "Test 37 passed"
else
    echo "Test 37 failed"
fi

if [ $(python -c "def len_log(words):
    return max(len(word) for word in words); print(len_log(["small","big","tall"]))") == 5 ]
then
    echo "Test 37 passed"
else
    echo "Test 37 failed"
fi

# Test 38
def find_substring(lst, sub):
    for string in lst:
        if sub in string:
            return True
    return False

# Test 39
def is_undulating(n):
    n = str(n)
    return all(n[i] != n[i+1] for i in range(len(n)-1))

if [ $(python -c "def is_undulating(n):
    n = str(n)
    return all(n[i] != n[i+1] for i in range(len(n)-1)); print(is_undulating(1212121))") == True ]
then
    echo "Test 39 passed"
else
    echo "Test 39 failed"
fi

if [ $(python -c "def is_undulating(n):
    n = str(n)
    return all(n[i] != n[i+1] for i in range(len(n)-1)); print(is_undulating(1991))") == False ]
then
    echo "Test 39 passed"
else
    echo "Test 39 failed"
fi

if [ $(python -c "def is_undulating(n):
    n = str(n)
    return all(n[i] != n[i+1] for i in range(len(n)-1)); print(is_undulating(121))") == True ]
then
    echo "Test 39 passed"
else
    echo "Test 39 failed"
fi

# Test 40
def power(a, b):
    return a ** b

if [ $(python -c "def power(a, b):
    return a ** b; print(power(3,4))") == 81 ]
then
    echo "Test 40 passed"
else
    echo "Test 40 failed"
fi

if [ $(python -c "def power(a, b):
    return a ** b; print(power(2,3))") == 8 ]
then
    echo "Test 40 passed"
else
    echo "Test 40 failed"
fi

if [ $(python -c "def power(a, b):
    return a ** b; print(power(5,5))") == 3125 ]
then
    echo "Test 40 passed"
else
    echo "Test 40 failed"
fi

# Test 41
def index_minimum(lst):
    return min(lst, key=lambda x: x[1])[0]

if [ $(python -c "def index_minimum(lst):
    return min(lst, key=lambda x: x[1])[0]; print(index_minimum([('Rash', 143), ('Manjeet', 200), ('Varsha', 100)]))") == Varsha ]
then
    echo "Test 41 passed"
else
    echo "Test 41 failed"
fi

if [ $(python -c "def index_minimum(lst):
    return min(lst, key=lambda x: x[1])[0]; print(index_minimum([('Yash', 185), ('Dawood', 125), ('Sanya', 175)]))") == Dawood ]
then
    echo "Test 41 passed"
else
    echo "Test 41 failed"
fi

if [ $(python -c "def index_minimum(lst):
    return min(lst, key=lambda x: x[1])[0]; print(index_minimum([('Sai', 345), ('Salman', 145), ('Ayesha', 96)]))") == Ayesha ]
then
    echo "Test 41 passed"
else
    echo "Test 41 failed"
fi

# Test 42
def Find_Min_Length(lists):
    return min(len(lst) for lst in lists)

if [ $(python -c "def Find_Min_Length(lists):
    return min(len(lst) for lst in lists); print(Find_Min_Length([[1],[1,2]]))") == 1 ]
then
    echo "Test 42 passed"
else
    echo "Test 42 failed"
fi

if [ $(python -c "def Find_Min_Length(lists):
    return min(len(lst) for lst in lists); print(Find_Min_Length([[1,2],[1,2,3],[1,2,3,4]]))") == 2 ]
then
    echo "Test 42 passed"
else
    echo "Test 42 failed"
fi

if [ $(python -c "def Find_Min_Length(lists):
    return min(len(lst) for lst in lists); print(Find_Min_Length([[3,3,3],[4,4,4,4]]))") == 3 ]
then
    echo "Test 42 passed"
else
    echo "Test 42 failed"
fi

# Test 43
def divisor(n):
    count = 0
    for i in range(1, n+1):
        if n % i == 0:
            count += 1
    return count

if [ $(python -c "def divisor(n):
    count = 0
    for i in range(1, n+1):
        if n % i == 0:
            count += 1
    return count; print(divisor(15))") == 4 ]
then
    echo "Test 43 passed"
else
    echo "Test 43 failed"
fi

if [ $(python -c "def divisor(n):
    count = 0
    for i in range(1, n+1):
        if n % i == 0:
            count += 1
    return count; print(divisor(12))") == 6 ]
then
    echo "Test 43 passed"
else
    echo "Test 43 failed"
fi

if [ $(python -c "def divisor(n):
    count = 0
    for i in range(1, n+1):
        if n % i == 0:
            count += 1
    return count; print(divisor(9))") == 3 ]
then
    echo "Test 43 passed"
else
    echo "Test 43 failed"
fi

# Test 44
def frequency_lists(lists):
    flat_list = [item for sublist in lists for item in sublist]
    freq_dict = {}
    for item in flat_list:
        if item in freq_dict:
            freq_dict[item] += 1
        else:
            freq_dict[item] = 1
    return freq_dict

# Test 45
import math
from functools import reduce

def multiply_num(nums):
    product = reduce(lambda x, y: x * y, nums)
    return product / len(nums)

# Test 46
def decimal_to_binary(n):
    return bin(n).replace("0b", "")

if [ $(python -c "def decimal_to_binary(n):
    return bin(n).replace("0b", ""); print(decimal_to_binary(8))") == 1000 ]
then
    echo "Test 46 passed"
else
    echo "Test 46 failed"
fi

if [ $(python -c "def decimal_to_binary(n):
    return bin(n).replace("0b", ""); print(decimal_to_binary(18))") == 10010 ]
then
    echo "Test 46 passed"
else
    echo "Test 46 failed"
fi

if [ $(python -c "def decimal_to_binary(n):
    return bin(n).replace("0b", ""); print(decimal_to_binary(7))") == 111 ]
then
    echo "Test 46 passed"
else
    echo "Test 46 failed"
fi

# Test 47
def next_smallest_palindrome(num):
    while True:
        num += 1
        if str(num) == str(num)[::-1]:
            return num

# Test 48
def kth_element(arr, k):
    if k > 0 and k <= len(arr):
        return arr[k-1]
    else:
        return None

if [ $(python -c "def kth_element(arr, k):
    if k > 0 and k <= len(arr):
        return arr[k-1]
    else:
        return None; print(kth_element([12,3,5,7,19], 2))") == 3 ]
then
    echo "Test 48 passed"
else
    echo "Test 48 failed"
fi

if [ $(python -c "def kth_element(arr, k):
    if k > 0 and k <= len(arr):
        return arr[k-1]
    else:
        return None; print(kth_element([17,24,8,23], 3))") == 8 ]
then
    echo "Test 48 passed"
else
    echo "Test 48 failed"
fi

if [ $(python -c "def kth_element(arr, k):
    if k > 0 and k <= len(arr):
        return arr[k-1]
    else:
        return None; print(kth_element([16,21,25,36,4], 4))") == 36 ]
then
    echo "Test 48 passed"
else
    echo "Test 48 failed"
fi

# Test 49
def snake_to_camel(s):
    return ''.join(word.title() for word in s.split('_'))

# Test 50
def eulerian_num(n, m):
    if m < 0 or m >= n:
        return 0
    if m == 0 or m == n - 1:
        return 1
    return (n - m) * eulerian_num(n - 1, m - 1) + (m + 1) * eulerian_num(n - 1, m)

if [ $(python -c "def eulerian_num(n, m):
    if m < 0 or m >= n:
        return 0
    if m == 0 or m == n - 1:
        return 1
    return (n - m) * eulerian_num(n - 1, m - 1) + (m + 1) * eulerian_num(n - 1, m); print(eulerian_num(3, 1))") == 4 ]
then
    echo "Test 50 passed"
else
    echo "Test 50 failed"
fi

if [ $(python -c "def eulerian_num(n, m):
    if m < 0 or m >= n:
        return 0
    if m == 0 or m == n - 1:
        return 1
    return (n - m) * eulerian_num(n - 1, m - 1) + (m + 1) * eulerian_num(n - 1, m); print(eulerian_num(4, 1))") == 11 ]
then
    echo "Test 50 passed"
else
    echo "Test 50 failed"
fi

if [ $(python -c "def eulerian_num(n, m):
    if m < 0 or m >= n:
        return 0
    if m == 0 or m == n - 1:
        return 1
    return (n - m) * eulerian_num(n - 1, m - 1) + (m + 1) * eulerian_num(n - 1, m); print(eulerian_num(5, 3))") == 26 ]
then
    echo "Test 50 passed"
else
    echo "Test 50 failed"
fi

# Test 51
def sort_sublists(lst):
    return [sorted(sublist) for sublist in lst]

# Test 52
def count(lst):
    return lst.count(True)

if [ $(python -c "def count(lst):
    return lst.count(True); print(count([True,False,True]))") == 2 ]
then
    echo "Test 52 passed"
else
    echo "Test 52 failed"
fi

if [ $(python -c "def count(lst):
    return lst.count(True); print(count([False,False]))") == 0 ]
then
    echo "Test 52 passed"
else
    echo "Test 52 failed"
fi

if [ $(python -c "def count(lst):
    return lst.count(True); print(count([True,True,True]))") == 3 ]
then
    echo "Test 52 passed"
else
    echo "Test 52 failed"
fi

# Test 53
def add_lists(lst, tup):
    return tup + tuple(lst)

if [ $(python -c "def add_lists(lst, tup):
    return tup + tuple(lst); print(add_lists([5, 6, 7], (9, 10)))") == (9, 10, 5, 6, 7) ]
then
    echo "Test 53 passed"
else
    echo "Test 53 failed"
fi

if [ $(python -c "def add_lists(lst, tup):
    return tup + tuple(lst); print(add_lists([6, 7, 8], (10, 11)))") == (10, 11, 6, 7, 8) ]
then
    echo "Test 53 passed"
else
    echo "Test 53 failed"
fi

if [ $(python -c "def add_lists(lst, tup):
    return tup + tuple(lst); print(add_lists([7, 8, 9], (11, 12)))") == (11, 12, 7, 8, 9) ]
then
    echo "Test 53 passed"
else
    echo "Test 53 failed"
fi

# Test 54
def merge_sorted_list(list1, list2, list3):
    # 3つのリストを結合
    merged_list = list1 + list2 + list3
    # 結合したリストをソート
    sorted_list = sorted(merged_list)
    return sorted_list

# Test 55
def odd_Equivalent(s, n):
    odd_count = 0
    for i in range(n):
        s = s[-1] + s[:-1]
        if int(s, 2) % 2 != 0:
            odd_count += 1
    return odd_count

if [ $(python -c "def odd_Equivalent(s, n):
    odd_count = 0
    for i in range(n):
        s = s[-1] + s[:-1]
        if int(s, 2) % 2 != 0:
            odd_count += 1
    return odd_count; print(odd_Equivalent("011001",6))") == 3 ]
then
    echo "Test 55 passed"
else
    echo "Test 55 failed"
fi

if [ $(python -c "def odd_Equivalent(s, n):
    odd_count = 0
    for i in range(n):
        s = s[-1] + s[:-1]
        if int(s, 2) % 2 != 0:
            odd_count += 1
    return odd_count; print(odd_Equivalent("11011",5))") == 4 ]
then
    echo "Test 55 passed"
else
    echo "Test 55 failed"
fi

if [ $(python -c "def odd_Equivalent(s, n):
    odd_count = 0
    for i in range(n):
        s = s[-1] + s[:-1]
        if int(s, 2) % 2 != 0:
            odd_count += 1
    return odd_count; print(odd_Equivalent("1010",4))") == 2 ]
then
    echo "Test 55 passed"
else
    echo "Test 55 failed"
fi

# Test 56
def common_in_nested_lists(nested_list):
    # Convert the nested lists to sets
    set_list = [set(lst) for lst in nested_list]
    # Find the intersection of all sets
    common_elements = set.intersection(*set_list)
    return list(common_elements)

# Test 57
def check_integer(s):
    try:
        int(s)
        return True
    except ValueError:
        return False

# Test 58
def empty_dit(lst):
    if type(lst) is not list:
        return False
    return all(not bool(d) for d in lst)

# Test 59
def tuple_to_int(t):
    return int(''.join(map(str, t)))

# Test 60
def list_to_float(lst):
    return [(float(i), float(j)) for i, j in lst]

if [ $(python -c "def list_to_float(lst):
    return [(float(i), float(j)) for i, j in lst]; print(list_to_float( [("3", "4"), ("1", "26.45"), ("7.32", "8"), ("4", "8")] ))") == [(3.0, 4.0), (1.0, 26.45), (7.32, 8.0), (4.0, 8.0)] ]
then
    echo "Test 60 passed"
else
    echo "Test 60 failed"
fi

if [ $(python -c "def list_to_float(lst):
    return [(float(i), float(j)) for i, j in lst]; print(list_to_float( [("4", "4"), ("2", "27"), ("4.12", "9"), ("7", "11")] ))") == [(4.0, 4.0), (2.0, 27.0), (4.12, 9.0), (7.0, 11.0)] ]
then
    echo "Test 60 passed"
else
    echo "Test 60 failed"
fi

if [ $(python -c "def list_to_float(lst):
    return [(float(i), float(j)) for i, j in lst]; print(list_to_float( [("6", "78"), ("5", "26.45"), ("1.33", "4"), ("82", "13")] ))") == [(6.0, 78.0), (5.0, 26.45), (1.33, 4.0), (82.0, 13.0)] ]
then
    echo "Test 60 passed"
else
    echo "Test 60 failed"
fi

# Test 61
def string_to_list(s):
    return s.split()

# Test 62
def search(nums):
    for i in range(0, len(nums), 2):
        if i+1 == len(nums):
            return nums[i]
        if nums[i] != nums[i+1]:
            return nums[i]

if [ $(python -c "def search(nums):
    for i in range(0, len(nums), 2):
        if i+1 == len(nums):
            return nums[i]
        if nums[i] != nums[i+1]:
            return nums[i]; print(search([1,1,2,2,3]))") == 3 ]
then
    echo "Test 62 passed"
else
    echo "Test 62 failed"
fi

if [ $(python -c "def search(nums):
    for i in range(0, len(nums), 2):
        if i+1 == len(nums):
            return nums[i]
        if nums[i] != nums[i+1]:
            return nums[i]; print(search([1,1,3,3,4,4,5,5,7,7,8]))") == 8 ]
then
    echo "Test 62 passed"
else
    echo "Test 62 failed"
fi

if [ $(python -c "def search(nums):
    for i in range(0, len(nums), 2):
        if i+1 == len(nums):
            return nums[i]
        if nums[i] != nums[i+1]:
            return nums[i]; print(search([1,2,2,3,3,4,4]))") == 1 ]
then
    echo "Test 62 passed"
else
    echo "Test 62 failed"
fi

# Test 63
def max_product_tuple(lst):
    return max(abs(a*b) for a, b in lst)

# Test 64
def amicable_numbers_sum(n):
    def sum_of_divisors(num):
        sum = 1
        for i in range(2, int(num**0.5) + 1):
            if num % i == 0:
                if num / i == i:
                    sum += i
                else:
                    sum += i + num / i
        return sum

    amicable_sum = 0
    for i in range(2, n+1):
        temp = sum_of_divisors(i)
        if temp < i:
            if i == sum_of_divisors(temp):
                amicable_sum += i + temp
    return amicable_sum

# Test 65
import cmath
import math

def angle_complex(real, imag):
    complex_num = real + imag
    return cmath.phase(complex_num)

# Test the function

# Test 66
def find_length(s):
    max_diff = 0
    for i in range(len(s)):
        for j in range(i, len(s)):
            substring = s[i:j+1]
            count_0 = substring.count('0')
            count_1 = substring.count('1')
            diff = abs(count_0 - count_1)
            if diff > max_diff:
                max_diff = diff
    return max_diff

if [ $(python -c "def find_length(s):
    max_diff = 0
    for i in range(len(s)):
        for j in range(i, len(s)):
            substring = s[i:j+1]
            count_0 = substring.count('0')
            count_1 = substring.count('1')
            diff = abs(count_0 - count_1)
            if diff > max_diff:
                max_diff = diff
    return max_diff; print(find_length("11000010001"))") == 6 ]
then
    echo "Test 66 passed"
else
    echo "Test 66 failed"
fi

if [ $(python -c "def find_length(s):
    max_diff = 0
    for i in range(len(s)):
        for j in range(i, len(s)):
            substring = s[i:j+1]
            count_0 = substring.count('0')
            count_1 = substring.count('1')
            diff = abs(count_0 - count_1)
            if diff > max_diff:
                max_diff = diff
    return max_diff; print(find_length("10111"))") == 1 ]
then
    echo "Test 66 passed"
else
    echo "Test 66 failed"
fi

if [ $(python -c "def find_length(s):
    max_diff = 0
    for i in range(len(s)):
        for j in range(i, len(s)):
            substring = s[i:j+1]
            count_0 = substring.count('0')
            count_1 = substring.count('1')
            diff = abs(count_0 - count_1)
            if diff > max_diff:
                max_diff = diff
    return max_diff; print(find_length("11011101100101"))") == 2 ]
then
    echo "Test 66 passed"
else
    echo "Test 66 failed"
fi

# Test 67
def sum_of_common_divisors(num1, num2):
    common_divisors = [i for i in range(1, min(num1, num2)+1) if num1%i == num2%i == 0]
    return sum(common_divisors)

# テスト

if [ $(python -c "def sum_of_common_divisors(num1, num2):
    common_divisors = [i for i in range(1, min(num1, num2)+1) if num1%i == num2%i == 0]
    return sum(common_divisors)

# テスト; print(sum_of_common_divisors(10,15))") == 6 ]
then
    echo "Test 67 passed"
else
    echo "Test 67 failed"
fi

if [ $(python -c "def sum_of_common_divisors(num1, num2):
    common_divisors = [i for i in range(1, min(num1, num2)+1) if num1%i == num2%i == 0]
    return sum(common_divisors)

# テスト; print(sum_of_common_divisors(100,150))") == 93 ]
then
    echo "Test 67 passed"
else
    echo "Test 67 failed"
fi

if [ $(python -c "def sum_of_common_divisors(num1, num2):
    common_divisors = [i for i in range(1, min(num1, num2)+1) if num1%i == num2%i == 0]
    return sum(common_divisors)

# テスト; print(sum_of_common_divisors(4,6))") == 3 ]
then
    echo "Test 67 passed"
else
    echo "Test 67 failed"
fi

# Test 68
def multiply_int(a, b):
    return a * b

# Test 69
def long_words(n, sentence):
    words = sentence.split()
    long_words = [word for word in words if len(word) > n]
    return long_words

# Test 70
def magic_square_test(matrix):
    # 行列のサイズを取得
    size = len(matrix)

    # 魔方陣の合計値を計算
    magic_sum = sum(matrix[0])

    # 各行の合計が魔方陣の合計と一致するか確認
    for row in matrix:
        if sum(row) != magic_sum:
            return False

    # 各列の合計が魔方陣の合計と一致するか確認
    for col in range(size):
        if sum(row[col] for row in matrix) != magic_sum:
            return False

    # 対角線の合計が魔方陣の合計と一致するか確認
    if sum(matrix[i][i] for i in range(size)) != magic_sum:
        return False
    if sum(matrix[i][size-i-1] for i in range(size)) != magic_sum:
        return False

    # すべてのチェックが通ったら魔方陣
    return True

# Test 71
def max_occurrences(lst):
    return max(set(lst), key = lst.count)

# Test 72
def reverse_vowels(s):
    vowels = 'aeiouAEIOU'
    i, j = 0, len(s) - 1
    s = list(s)
    while i < j:
        if s[i] not in vowels:
            i += 1
        elif s[j] not in vowels:
            j -= 1
        else:
            s[i], s[j] = s[j], s[i]
            i, j = i + 1, j - 1
    return ''.join(s)

if [ $(python -c "def reverse_vowels(s):
    vowels = 'aeiouAEIOU'
    i, j = 0, len(s) - 1
    s = list(s)
    while i < j:
        if s[i] not in vowels:
            i += 1
        elif s[j] not in vowels:
            j -= 1
        else:
            s[i], s[j] = s[j], s[i]
            i, j = i + 1, j - 1
    return ''.join(s); print(reverse_vowels("Python"))") == Python ]
then
    echo "Test 72 passed"
else
    echo "Test 72 failed"
fi

if [ $(python -c "def reverse_vowels(s):
    vowels = 'aeiouAEIOU'
    i, j = 0, len(s) - 1
    s = list(s)
    while i < j:
        if s[i] not in vowels:
            i += 1
        elif s[j] not in vowels:
            j -= 1
        else:
            s[i], s[j] = s[j], s[i]
            i, j = i + 1, j - 1
    return ''.join(s); print(reverse_vowels("USA"))") == ASU ]
then
    echo "Test 72 passed"
else
    echo "Test 72 failed"
fi

if [ $(python -c "def reverse_vowels(s):
    vowels = 'aeiouAEIOU'
    i, j = 0, len(s) - 1
    s = list(s)
    while i < j:
        if s[i] not in vowels:
            i += 1
        elif s[j] not in vowels:
            j -= 1
        else:
            s[i], s[j] = s[j], s[i]
            i, j = i + 1, j - 1
    return ''.join(s); print(reverse_vowels("ab"))") == ab ]
then
    echo "Test 72 passed"
else
    echo "Test 72 failed"
fi

# Test 73
def tup_string(tup):
    return ''.join(tup)

# Test 74
def sum_negativenum(lst):
    return sum(i for i in lst if i < 0)

# Test 75
def hexagonal_num(n):
    return n * (2 * n - 1)

if [ $(python -c "def hexagonal_num(n):
    return n * (2 * n - 1); print(hexagonal_num(10))") == 190 ]
then
    echo "Test 75 passed"
else
    echo "Test 75 failed"
fi

if [ $(python -c "def hexagonal_num(n):
    return n * (2 * n - 1); print(hexagonal_num(5))") == 45 ]
then
    echo "Test 75 passed"
else
    echo "Test 75 failed"
fi

if [ $(python -c "def hexagonal_num(n):
    return n * (2 * n - 1); print(hexagonal_num(7))") == 91 ]
then
    echo "Test 75 passed"
else
    echo "Test 75 failed"
fi

# Test 76
import math

def zero_count(lst):
    zero = lst.count(0)
    non_zero = len(lst) - zero
    return zero / len(lst) if len(lst) != 0 else 0

# Test 77
def is_Sum_Of_Powers_Of_Two(n):
    while n:
        if n % 2 != 0 and n != 1:
            return False
        n //= 2
    return True

if [ $(python -c "def is_Sum_Of_Powers_Of_Two(n):
    while n:
        if n % 2 != 0 and n != 1:
            return False
        n //= 2
    return True; print(is_Sum_Of_Powers_Of_Two(10))") == True ]
then
    echo "Test 77 passed"
else
    echo "Test 77 failed"
fi

if [ $(python -c "def is_Sum_Of_Powers_Of_Two(n):
    while n:
        if n % 2 != 0 and n != 1:
            return False
        n //= 2
    return True; print(is_Sum_Of_Powers_Of_Two(7))") == False ]
then
    echo "Test 77 passed"
else
    echo "Test 77 failed"
fi

if [ $(python -c "def is_Sum_Of_Powers_Of_Two(n):
    while n:
        if n % 2 != 0 and n != 1:
            return False
        n //= 2
    return True; print(is_Sum_Of_Powers_Of_Two(14))") == True ]
then
    echo "Test 77 passed"
else
    echo "Test 77 failed"
fi

# Test 78
import math

def circle_circumference(radius):
    return 2 * math.pi * radius

# Test 79
def extract_singly(lst):
    return [item for sublist in lst for item in sublist]

if [ $(python -c "def extract_singly(lst):
    return [item for sublist in lst for item in sublist]; print(extract_singly(extract_singly([(3, 4, 5), (4, 5, 7), (1, 4)])))") == {1, 3, 4, 5, 7} ]
then
    echo "Test 79 passed"
else
    echo "Test 79 failed"
fi

if [ $(python -c "def extract_singly(lst):
    return [item for sublist in lst for item in sublist]; print(extract_singly(extract_singly([(1, 2, 3), (4, 2, 3), (7, 8)])))") == {1, 2, 3, 4, 7, 8} ]
then
    echo "Test 79 passed"
else
    echo "Test 79 failed"
fi

if [ $(python -c "def extract_singly(lst):
    return [item for sublist in lst for item in sublist]; print(extract_singly(extract_singly([(7, 8, 9), (10, 11, 12), (10, 11)])))") == {7, 8, 9, 10, 11, 12} ]
then
    echo "Test 79 passed"
else
    echo "Test 79 failed"
fi

# Test 80
def pancake_sort(lst):
    arr_len = len(lst)
    while arr_len > 1:
        # 最大値のインデックスを見つける
        mi = lst.index(max(lst[0:arr_len]))
        # 最大値をリストの先頭に移動
        lst = lst[mi::-1] + lst[mi+1:len(lst)]
        # 最大値をリストの正しい位置に移動
        lst = lst[arr_len-1::-1] + lst[arr_len:len(lst)]
        arr_len -= 1
    return lst

if [ $(python -c "def pancake_sort(lst):
    arr_len = len(lst)
    while arr_len > 1:
        # 最大値のインデックスを見つける
        mi = lst.index(max(lst[0:arr_len]))
        # 最大値をリストの先頭に移動
        lst = lst[mi::-1] + lst[mi+1:len(lst)]
        # 最大値をリストの正しい位置に移動
        lst = lst[arr_len-1::-1] + lst[arr_len:len(lst)]
        arr_len -= 1
    return lst; print(pancake_sort([15, 79, 25, 38, 69]))") == [15, 25, 38, 69, 79] ]
then
    echo "Test 80 passed"
else
    echo "Test 80 failed"
fi

if [ $(python -c "def pancake_sort(lst):
    arr_len = len(lst)
    while arr_len > 1:
        # 最大値のインデックスを見つける
        mi = lst.index(max(lst[0:arr_len]))
        # 最大値をリストの先頭に移動
        lst = lst[mi::-1] + lst[mi+1:len(lst)]
        # 最大値をリストの正しい位置に移動
        lst = lst[arr_len-1::-1] + lst[arr_len:len(lst)]
        arr_len -= 1
    return lst; print(pancake_sort([98, 12, 54, 36, 85]))") == [12, 36, 54, 85, 98] ]
then
    echo "Test 80 passed"
else
    echo "Test 80 failed"
fi

if [ $(python -c "def pancake_sort(lst):
    arr_len = len(lst)
    while arr_len > 1:
        # 最大値のインデックスを見つける
        mi = lst.index(max(lst[0:arr_len]))
        # 最大値をリストの先頭に移動
        lst = lst[mi::-1] + lst[mi+1:len(lst)]
        # 最大値をリストの正しい位置に移動
        lst = lst[arr_len-1::-1] + lst[arr_len:len(lst)]
        arr_len -= 1
    return lst; print(pancake_sort([41, 42, 32, 12, 23]))") == [12, 23, 32, 41, 42] ]
then
    echo "Test 80 passed"
else
    echo "Test 80 failed"
fi

# Test 81
def count_samepair(list1, list2, list3):
    return sum(a == b == c for a, b, c in zip(list1, list2, list3))

# Test 82
def find_lists(tup):
    return len(tup)

if [ $(python -c "def find_lists(tup):
    return len(tup); print(find_lists(([1, 2, 3, 4], [5, 6, 7, 8])))") == 2 ]
then
    echo "Test 82 passed"
else
    echo "Test 82 failed"
fi

if [ $(python -c "def find_lists(tup):
    return len(tup); print(find_lists(([1, 2], [3, 4], [5, 6])) )") == 3 ]
then
    echo "Test 82 passed"
else
    echo "Test 82 failed"
fi

if [ $(python -c "def find_lists(tup):
    return len(tup); print(find_lists(([9, 8, 7, 6, 5, 4, 3, 2, 1])))") == 1 ]
then
    echo "Test 82 passed"
else
    echo "Test 82 failed"
fi

# Test 83
def max_Abs_Diff(arr):
    return max(arr) - min(arr)

if [ $(python -c "def max_Abs_Diff(arr):
    return max(arr) - min(arr); print(max_Abs_Diff((2,1,5,3)))") == 4 ]
then
    echo "Test 83 passed"
else
    echo "Test 83 failed"
fi

if [ $(python -c "def max_Abs_Diff(arr):
    return max(arr) - min(arr); print(max_Abs_Diff((9,3,2,5,1)))") == 8 ]
then
    echo "Test 83 passed"
else
    echo "Test 83 failed"
fi

if [ $(python -c "def max_Abs_Diff(arr):
    return max(arr) - min(arr); print(max_Abs_Diff((3,2,1)))") == 2 ]
then
    echo "Test 83 passed"
else
    echo "Test 83 failed"
fi

# Test 84
def find_solution(a, b, n):
    for x in range(n+1):
        for y in range(n+1):
            if a*x + b*y == n:
                return (x, y)
    return None

if [ $(python -c "def find_solution(a, b, n):
    for x in range(n+1):
        for y in range(n+1):
            if a*x + b*y == n:
                return (x, y)
    return None; print(find_solution(2, 3, 7))") == (2, 1) ]
then
    echo "Test 84 passed"
else
    echo "Test 84 failed"
fi

if [ $(python -c "def find_solution(a, b, n):
    for x in range(n+1):
        for y in range(n+1):
            if a*x + b*y == n:
                return (x, y)
    return None; print(find_solution(4, 2, 7))") == None ]
then
    echo "Test 84 passed"
else
    echo "Test 84 failed"
fi

if [ $(python -c "def find_solution(a, b, n):
    for x in range(n+1):
        for y in range(n+1):
            if a*x + b*y == n:
                return (x, y)
    return None; print(find_solution(1, 13, 17))") == (4, 1) ]
then
    echo "Test 84 passed"
else
    echo "Test 84 failed"
fi

# Test 85
def remove_elements(lst, elements_to_remove):
    return [element for element in lst if element not in elements_to_remove]

if [ $(python -c "def remove_elements(lst, elements_to_remove):
    return [element for element in lst if element not in elements_to_remove]; print(remove_elements([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [2, 4, 6, 8]))") == [1, 3, 5, 7, 9, 10] ]
then
    echo "Test 85 passed"
else
    echo "Test 85 failed"
fi

if [ $(python -c "def remove_elements(lst, elements_to_remove):
    return [element for element in lst if element not in elements_to_remove]; print(remove_elements([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [1, 3, 5, 7]))") == [2, 4, 6, 8, 9, 10] ]
then
    echo "Test 85 passed"
else
    echo "Test 85 failed"
fi

if [ $(python -c "def remove_elements(lst, elements_to_remove):
    return [element for element in lst if element not in elements_to_remove]; print(remove_elements([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [5, 7]))") == [1, 2, 3, 4, 6, 8, 9, 10] ]
then
    echo "Test 85 passed"
else
    echo "Test 85 failed"
fi

# Test 86
def sum_series(n):
    return sum(n - 2*i for i in range(n // 2 + 1))

if [ $(python -c "def sum_series(n):
    return sum(n - 2*i for i in range(n // 2 + 1)); print(sum_series(6))") == 12 ]
then
    echo "Test 86 passed"
else
    echo "Test 86 failed"
fi

if [ $(python -c "def sum_series(n):
    return sum(n - 2*i for i in range(n // 2 + 1)); print(sum_series(10))") == 30 ]
then
    echo "Test 86 passed"
else
    echo "Test 86 failed"
fi

if [ $(python -c "def sum_series(n):
    return sum(n - 2*i for i in range(n // 2 + 1)); print(sum_series(9))") == 25 ]
then
    echo "Test 86 passed"
else
    echo "Test 86 failed"
fi

# Test 87
import math

def area_polygon(side_length, num_sides):
    # 正多角形の面積を計算する公式を使用
    area = (num_sides * side_length ** 2) / (4 * math.tan(math.pi / num_sides))
    return area

# Test 88
def are_equivalent(n1, n2):
    def sum_of_divisors(n):
        sum = 0
        for i in range(1, n + 1):
            if n % i == 0:
                sum += i
        return sum

    return sum_of_divisors(n1) == sum_of_divisors(n2)

if [ $(python -c "def are_equivalent(n1, n2):
    def sum_of_divisors(n):
        sum = 0
        for i in range(1, n + 1):
            if n % i == 0:
                sum += i
        return sum

    return sum_of_divisors(n1) == sum_of_divisors(n2); print(are_equivalent(36, 57))") == False ]
then
    echo "Test 88 passed"
else
    echo "Test 88 failed"
fi

if [ $(python -c "def are_equivalent(n1, n2):
    def sum_of_divisors(n):
        sum = 0
        for i in range(1, n + 1):
            if n % i == 0:
                sum += i
        return sum

    return sum_of_divisors(n1) == sum_of_divisors(n2); print(are_equivalent(2, 4))") == False ]
then
    echo "Test 88 passed"
else
    echo "Test 88 failed"
fi

if [ $(python -c "def are_equivalent(n1, n2):
    def sum_of_divisors(n):
        sum = 0
        for i in range(1, n + 1):
            if n % i == 0:
                sum += i
        return sum

    return sum_of_divisors(n1) == sum_of_divisors(n2); print(are_equivalent(23, 47))") == True ]
then
    echo "Test 88 passed"
else
    echo "Test 88 failed"
fi

# Test 89
def count_char_position(s):
    s = s.lower()
    count = 0
    for i in range(len(s)):
        if ord(s[i]) - ord('a') == i:
            count += 1
    return count

if [ $(python -c "def count_char_position(s):
    s = s.lower()
    count = 0
    for i in range(len(s)):
        if ord(s[i]) - ord('a') == i:
            count += 1
    return count; print(count_char_position("xbcefg"))") == 2 ]
then
    echo "Test 89 passed"
else
    echo "Test 89 failed"
fi

if [ $(python -c "def count_char_position(s):
    s = s.lower()
    count = 0
    for i in range(len(s)):
        if ord(s[i]) - ord('a') == i:
            count += 1
    return count; print(count_char_position("ABcED"))") == 3 ]
then
    echo "Test 89 passed"
else
    echo "Test 89 failed"
fi

if [ $(python -c "def count_char_position(s):
    s = s.lower()
    count = 0
    for i in range(len(s)):
        if ord(s[i]) - ord('a') == i:
            count += 1
    return count; print(count_char_position("AbgdeF"))") == 5 ]
then
    echo "Test 89 passed"
else
    echo "Test 89 failed"
fi

# Test 90
def find_even_pair(nums):
    count = 0
    for i in range(len(nums)):
        for j in range(i+1, len(nums)):
            if (nums[i] ^ nums[j]) % 2 == 0:
                count += 1
    return count

if [ $(python -c "def find_even_pair(nums):
    count = 0
    for i in range(len(nums)):
        for j in range(i+1, len(nums)):
            if (nums[i] ^ nums[j]) % 2 == 0:
                count += 1
    return count; print(find_even_pair([5, 4, 7, 2, 1]))") == 4 ]
then
    echo "Test 90 passed"
else
    echo "Test 90 failed"
fi

if [ $(python -c "def find_even_pair(nums):
    count = 0
    for i in range(len(nums)):
        for j in range(i+1, len(nums)):
            if (nums[i] ^ nums[j]) % 2 == 0:
                count += 1
    return count; print(find_even_pair([7, 2, 8, 1, 0, 5, 11]))") == 9 ]
then
    echo "Test 90 passed"
else
    echo "Test 90 failed"
fi

if [ $(python -c "def find_even_pair(nums):
    count = 0
    for i in range(len(nums)):
        for j in range(i+1, len(nums)):
            if (nums[i] ^ nums[j]) % 2 == 0:
                count += 1
    return count; print(find_even_pair([1, 2, 3]))") == 1 ]
then
    echo "Test 90 passed"
else
    echo "Test 90 failed"
fi

# Test 91
import math

def next_power_of_2(n):
    return 2 ** math.ceil(math.log2(n))

# テスト

if [ $(python -c "import math

def next_power_of_2(n):
    return 2 ** math.ceil(math.log2(n))

# テスト; print(next_power_of_2(0))") == 1 ]
then
    echo "Test 91 passed"
else
    echo "Test 91 failed"
fi

if [ $(python -c "import math

def next_power_of_2(n):
    return 2 ** math.ceil(math.log2(n))

# テスト; print(next_power_of_2(5))") == 8 ]
then
    echo "Test 91 passed"
else
    echo "Test 91 failed"
fi

if [ $(python -c "import math

def next_power_of_2(n):
    return 2 ** math.ceil(math.log2(n))

# テスト; print(next_power_of_2(17))") == 32 ]
then
    echo "Test 91 passed"
else
    echo "Test 91 failed"
fi

# Test 92
def frequency(lst, num):
    return lst.count(num)

if [ $(python -c "def frequency(lst, num):
    return lst.count(num); print(frequency([1,2,3], 4))") == 0 ]
then
    echo "Test 92 passed"
else
    echo "Test 92 failed"
fi

if [ $(python -c "def frequency(lst, num):
    return lst.count(num); print(frequency([1,2,2,3,3,3,4], 3))") == 3 ]
then
    echo "Test 92 passed"
else
    echo "Test 92 failed"
fi

if [ $(python -c "def frequency(lst, num):
    return lst.count(num); print(frequency([0,1,2,3,1,2], 1))") == 2 ]
then
    echo "Test 92 passed"
else
    echo "Test 92 failed"
fi

# Test 93
def sum_range_list(lst, start, end):
    return sum(lst[start:end+1])

if [ $(python -c "def sum_range_list(lst, start, end):
    return sum(lst[start:end+1]); print(sum_range_list([2,1,5,6,8,3,4,9,10,11,8,12], 8, 10))") == 29 ]
then
    echo "Test 93 passed"
else
    echo "Test 93 failed"
fi

if [ $(python -c "def sum_range_list(lst, start, end):
    return sum(lst[start:end+1]); print(sum_range_list([2,1,5,6,8,3,4,9,10,11,8,12], 5, 7))") == 16 ]
then
    echo "Test 93 passed"
else
    echo "Test 93 failed"
fi

if [ $(python -c "def sum_range_list(lst, start, end):
    return sum(lst[start:end+1]); print(sum_range_list([2,1,5,6,8,3,4,9,10,11,8,12], 7, 10))") == 38 ]
then
    echo "Test 93 passed"
else
    echo "Test 93 failed"
fi

# Test 94
def perimeter_pentagon(side_length):
    return 5 * side_length

if [ $(python -c "def perimeter_pentagon(side_length):
    return 5 * side_length; print(perimeter_pentagon(5))") == 25 ]
then
    echo "Test 94 passed"
else
    echo "Test 94 failed"
fi

if [ $(python -c "def perimeter_pentagon(side_length):
    return 5 * side_length; print(perimeter_pentagon(10))") == 50 ]
then
    echo "Test 94 passed"
else
    echo "Test 94 failed"
fi

if [ $(python -c "def perimeter_pentagon(side_length):
    return 5 * side_length; print(perimeter_pentagon(15))") == 75 ]
then
    echo "Test 94 passed"
else
    echo "Test 94 failed"
fi

# Test 95
def count_occurance(s):
    return s.count('std')

if [ $(python -c "def count_occurance(s):
    return s.count('std'); print(count_occurance("letstdlenstdporstd"))") == 3 ]
then
    echo "Test 95 passed"
else
    echo "Test 95 failed"
fi

if [ $(python -c "def count_occurance(s):
    return s.count('std'); print(count_occurance("truststdsolensporsd"))") == 1 ]
then
    echo "Test 95 passed"
else
    echo "Test 95 failed"
fi

if [ $(python -c "def count_occurance(s):
    return s.count('std'); print(count_occurance("makestdsostdworthit"))") == 2 ]
then
    echo "Test 95 passed"
else
    echo "Test 95 failed"
fi

if [ $(python -c "def count_occurance(s):
    return s.count('std'); print(count_occurance("stds"))") == 1 ]
then
    echo "Test 95 passed"
else
    echo "Test 95 failed"
fi

if [ $(python -c "def count_occurance(s):
    return s.count('std'); print(count_occurance(""))") == 0 ]
then
    echo "Test 95 passed"
else
    echo "Test 95 failed"
fi

# Test 96
def check_type(tup):
    return all(isinstance(i, type(tup[0])) for i in tup)

if [ $(python -c "def check_type(tup):
    return all(isinstance(i, type(tup[0])) for i in tup); print(check_type((5, 6, 7, 3, 5, 6) ))") == True ]
then
    echo "Test 96 passed"
else
    echo "Test 96 failed"
fi

if [ $(python -c "def check_type(tup):
    return all(isinstance(i, type(tup[0])) for i in tup); print(check_type((1, 2, "4") ))") == False ]
then
    echo "Test 96 passed"
else
    echo "Test 96 failed"
fi

if [ $(python -c "def check_type(tup):
    return all(isinstance(i, type(tup[0])) for i in tup); print(check_type((3, 2, 1, 4, 5) ))") == True ]
then
    echo "Test 96 passed"
else
    echo "Test 96 failed"
fi

# Test 97
def is_majority(arr, n, elem):
    return arr.count(elem) > n / 2

if [ $(python -c "def is_majority(arr, n, elem):
    return arr.count(elem) > n / 2; print(is_majority([1, 2, 3, 3, 3, 3, 10], 7, 3))") == True ]
then
    echo "Test 97 passed"
else
    echo "Test 97 failed"
fi

if [ $(python -c "def is_majority(arr, n, elem):
    return arr.count(elem) > n / 2; print(is_majority([1, 1, 2, 4, 4, 4, 6, 6], 8, 4))") == False ]
then
    echo "Test 97 passed"
else
    echo "Test 97 failed"
fi

if [ $(python -c "def is_majority(arr, n, elem):
    return arr.count(elem) > n / 2; print(is_majority([1, 1, 1, 2, 2], 5, 1))") == True ]
then
    echo "Test 97 passed"
else
    echo "Test 97 failed"
fi

if [ $(python -c "def is_majority(arr, n, elem):
    return arr.count(elem) > n / 2; print(is_majority([1, 1, 2, 2], 5, 1))") == False ]
then
    echo "Test 97 passed"
else
    echo "Test 97 failed"
fi

# Test 98
def count_Set_Bits(n):
    return bin(n).count('1')

if [ $(python -c "def count_Set_Bits(n):
    return bin(n).count('1'); print(count_Set_Bits(2))") == 1 ]
then
    echo "Test 98 passed"
else
    echo "Test 98 failed"
fi

if [ $(python -c "def count_Set_Bits(n):
    return bin(n).count('1'); print(count_Set_Bits(4))") == 1 ]
then
    echo "Test 98 passed"
else
    echo "Test 98 failed"
fi

if [ $(python -c "def count_Set_Bits(n):
    return bin(n).count('1'); print(count_Set_Bits(6))") == 2 ]
then
    echo "Test 98 passed"
else
    echo "Test 98 failed"
fi

# Test 99
def odd_values_string(str):
    result = ""
    for i in range(len(str)):
        if i % 2 == 0:
            result = result + str[i]
    return result

if [ $(python -c "def odd_values_string(str):
    result = ""
    for i in range(len(str)):
        if i % 2 == 0:
            result = result + str[i]
    return result; print(odd_values_string('abcdef'))") == ace ]
then
    echo "Test 99 passed"
else
    echo "Test 99 failed"
fi

if [ $(python -c "def odd_values_string(str):
    result = ""
    for i in range(len(str)):
        if i % 2 == 0:
            result = result + str[i]
    return result; print(odd_values_string('python'))") == pto ]
then
    echo "Test 99 passed"
else
    echo "Test 99 failed"
fi

if [ $(python -c "def odd_values_string(str):
    result = ""
    for i in range(len(str)):
        if i % 2 == 0:
            result = result + str[i]
    return result; print(odd_values_string('data'))") == dt ]
then
    echo "Test 99 passed"
else
    echo "Test 99 failed"
fi

if [ $(python -c "def odd_values_string(str):
    result = ""
    for i in range(len(str)):
        if i % 2 == 0:
            result = result + str[i]
    return result; print(odd_values_string('lambs'))") == lms ]
then
    echo "Test 99 passed"
else
    echo "Test 99 failed"
fi

# Test 100
def min_of_three(a, b, c):
    return min(a, b, c)

# Test 101
def all_Bits_Set_In_The_Given_Range(n, l, r):
    # Create a mask of r-l+1 bits
    mask = ((1 << (r-l+1)) - 1) << (l-1)
    # If all bits in the given range are unset, then bitwise AND of n and mask should be 0
    return (n & mask) == 0

if [ $(python -c "def all_Bits_Set_In_The_Given_Range(n, l, r):
    # Create a mask of r-l+1 bits
    mask = ((1 << (r-l+1)) - 1) << (l-1)
    # If all bits in the given range are unset, then bitwise AND of n and mask should be 0
    return (n & mask) == 0; print(all_Bits_Set_In_The_Given_Range(4,1,2))") == True ]
then
    echo "Test 101 passed"
else
    echo "Test 101 failed"
fi

if [ $(python -c "def all_Bits_Set_In_The_Given_Range(n, l, r):
    # Create a mask of r-l+1 bits
    mask = ((1 << (r-l+1)) - 1) << (l-1)
    # If all bits in the given range are unset, then bitwise AND of n and mask should be 0
    return (n & mask) == 0; print(all_Bits_Set_In_The_Given_Range(17,2,4))") == True ]
then
    echo "Test 101 passed"
else
    echo "Test 101 failed"
fi

if [ $(python -c "def all_Bits_Set_In_The_Given_Range(n, l, r):
    # Create a mask of r-l+1 bits
    mask = ((1 << (r-l+1)) - 1) << (l-1)
    # If all bits in the given range are unset, then bitwise AND of n and mask should be 0
    return (n & mask) == 0; print(all_Bits_Set_In_The_Given_Range(39,4,6))") == False ]
then
    echo "Test 101 passed"
else
    echo "Test 101 failed"
fi

# Test 102
def re_arrange_array(arr, n):
    neg = [i for i in arr if i < 0]
    pos = [i for i in arr if i >= 0]
    return neg + pos

if [ $(python -c "def re_arrange_array(arr, n):
    neg = [i for i in arr if i < 0]
    pos = [i for i in arr if i >= 0]
    return neg + pos; print(re_arrange_array([-1, 2, -3, 4, 5, 6, -7, 8, 9], 9))") == [-1, -3, -7, 4, 5, 6, 2, 8, 9] ]
then
    echo "Test 102 passed"
else
    echo "Test 102 failed"
fi

if [ $(python -c "def re_arrange_array(arr, n):
    neg = [i for i in arr if i < 0]
    pos = [i for i in arr if i >= 0]
    return neg + pos; print(re_arrange_array([12, -14, -26, 13, 15], 5))") == [-14, -26, 12, 13, 15] ]
then
    echo "Test 102 passed"
else
    echo "Test 102 failed"
fi

if [ $(python -c "def re_arrange_array(arr, n):
    neg = [i for i in arr if i < 0]
    pos = [i for i in arr if i >= 0]
    return neg + pos; print(re_arrange_array([10, 24, 36, -42, -39, -78, 85], 7))") == [-42, -39, -78, 10, 24, 36, 85] ]
then
    echo "Test 102 passed"
else
    echo "Test 102 failed"
fi

# Test 103
def replace_blank(string, char):
    return string.replace(' ', char)

# Test 104
def larg_nnum(lst, n):
    return sorted(lst, reverse=True)[:n]

# Test 105
import math

def lateralsuface_cylinder(radius, height):
    return 2 * math.pi * radius * height

# Test 106
def volume_cube(side_length):
    return side_length ** 3

# Test 107
def even_bit_set_number(n):
    # 0b10101010101010101010101010101010 is a 32-bit number with all even bits set to 1
    return n | 0b10101010101010101010101010101010

if [ $(python -c "def even_bit_set_number(n):
    # 0b10101010101010101010101010101010 is a 32-bit number with all even bits set to 1
    return n | 0b10101010101010101010101010101010; print(even_bit_set_number(10))") == 10 ]
then
    echo "Test 107 passed"
else
    echo "Test 107 failed"
fi

if [ $(python -c "def even_bit_set_number(n):
    # 0b10101010101010101010101010101010 is a 32-bit number with all even bits set to 1
    return n | 0b10101010101010101010101010101010; print(even_bit_set_number(20))") == 30 ]
then
    echo "Test 107 passed"
else
    echo "Test 107 failed"
fi

if [ $(python -c "def even_bit_set_number(n):
    # 0b10101010101010101010101010101010 is a 32-bit number with all even bits set to 1
    return n | 0b10101010101010101010101010101010; print(even_bit_set_number(30))") == 30 ]
then
    echo "Test 107 passed"
else
    echo "Test 107 failed"
fi

# Test 108
def check_occurences(lst):
    d = {}
    for i in lst:
        i = tuple(sorted(i))
        if i in d:
            d[i] += 1
        else:
            d[i] = 1
    return d

if [ $(python -c "def check_occurences(lst):
    d = {}
    for i in lst:
        i = tuple(sorted(i))
        if i in d:
            d[i] += 1
        else:
            d[i] = 1
    return d; print(check_occurences([(3, 1), (1, 3), (2, 5), (5, 2), (6, 3)] ))") == {(1, 3): 2, (2, 5): 2, (3, 6): 1} ]
then
    echo "Test 108 passed"
else
    echo "Test 108 failed"
fi

if [ $(python -c "def check_occurences(lst):
    d = {}
    for i in lst:
        i = tuple(sorted(i))
        if i in d:
            d[i] += 1
        else:
            d[i] = 1
    return d; print(check_occurences([(4, 2), (2, 4), (3, 6), (6, 3), (7, 4)] ))") == {(2, 4): 2, (3, 6): 2, (4, 7): 1} ]
then
    echo "Test 108 passed"
else
    echo "Test 108 failed"
fi

if [ $(python -c "def check_occurences(lst):
    d = {}
    for i in lst:
        i = tuple(sorted(i))
        if i in d:
            d[i] += 1
        else:
            d[i] = 1
    return d; print(check_occurences([(13, 2), (11, 23), (12, 25), (25, 12), (16, 23)] ))") == {(2, 13): 1, (11, 23): 1, (12, 25): 2, (16, 23): 1} ]
then
    echo "Test 108 passed"
else
    echo "Test 108 failed"
fi

# Test 109
def number_of_substrings(s):
    n = len(s)
    return n*(n+1)//2

if [ $(python -c "def number_of_substrings(s):
    n = len(s)
    return n*(n+1)//2; print(number_of_substrings("abc"))") == 6 ]
then
    echo "Test 109 passed"
else
    echo "Test 109 failed"
fi

if [ $(python -c "def number_of_substrings(s):
    n = len(s)
    return n*(n+1)//2; print(number_of_substrings("abcd"))") == 10 ]
then
    echo "Test 109 passed"
else
    echo "Test 109 failed"
fi

if [ $(python -c "def number_of_substrings(s):
    n = len(s)
    return n*(n+1)//2; print(number_of_substrings("abcde"))") == 15 ]
then
    echo "Test 109 passed"
else
    echo "Test 109 failed"
fi

# Test 110
def get_total_number_of_sequences(m, n):
    dp = [[0 for _ in range(n+1)] for _ in range(m+1)]
    for i in range(m+1):
        dp[i][1] = i
    for i in range(2, m+1):
        for j in range(2, min(i, n)+1):
            dp[i][j] = dp[i//2][j-1] + dp[i-1][j]
    return dp[m][n]

if [ $(python -c "def get_total_number_of_sequences(m, n):
    dp = [[0 for _ in range(n+1)] for _ in range(m+1)]
    for i in range(m+1):
        dp[i][1] = i
    for i in range(2, m+1):
        for j in range(2, min(i, n)+1):
            dp[i][j] = dp[i//2][j-1] + dp[i-1][j]
    return dp[m][n]; print(get_total_number_of_sequences(10, 4))") == 4 ]
then
    echo "Test 110 passed"
else
    echo "Test 110 failed"
fi

if [ $(python -c "def get_total_number_of_sequences(m, n):
    dp = [[0 for _ in range(n+1)] for _ in range(m+1)]
    for i in range(m+1):
        dp[i][1] = i
    for i in range(2, m+1):
        for j in range(2, min(i, n)+1):
            dp[i][j] = dp[i//2][j-1] + dp[i-1][j]
    return dp[m][n]; print(get_total_number_of_sequences(5, 2))") == 6 ]
then
    echo "Test 110 passed"
else
    echo "Test 110 failed"
fi

if [ $(python -c "def get_total_number_of_sequences(m, n):
    dp = [[0 for _ in range(n+1)] for _ in range(m+1)]
    for i in range(m+1):
        dp[i][1] = i
    for i in range(2, m+1):
        for j in range(2, min(i, n)+1):
            dp[i][j] = dp[i//2][j-1] + dp[i-1][j]
    return dp[m][n]; print(get_total_number_of_sequences(16, 3))") == 84 ]
then
    echo "Test 110 passed"
else
    echo "Test 110 failed"
fi

# Test 111
def replace_list(list1, list2):
    list1[-1:] = list2
    return list1

# Test 112
def count_charac(s):
    return len(s)

# Test 113
import math

def next_Perfect_Square(n):
    return math.ceil(math.sqrt(n))**2

if [ $(python -c "import math

def next_Perfect_Square(n):
    return math.ceil(math.sqrt(n))**2; print(next_Perfect_Square(35))") == 36 ]
then
    echo "Test 113 passed"
else
    echo "Test 113 failed"
fi

if [ $(python -c "import math

def next_Perfect_Square(n):
    return math.ceil(math.sqrt(n))**2; print(next_Perfect_Square(6))") == 9 ]
then
    echo "Test 113 passed"
else
    echo "Test 113 failed"
fi

if [ $(python -c "import math

def next_Perfect_Square(n):
    return math.ceil(math.sqrt(n))**2; print(next_Perfect_Square(9))") == 16 ]
then
    echo "Test 113 passed"
else
    echo "Test 113 failed"
fi

# Test 114
def max_sum(arr):
    n = len(arr)
    inc = [0]*n
    dec = [0]*n
    max_val = 0

    inc[0] = arr[0]
    for i in range(1, n):
        inc[i] = max(inc[j] for j in range(i) if arr[j] < arr[i], default=0) + arr[i]

    dec[n-1] = arr[n-1]
    for i in range(n-2, -1, -1):
        dec[i] = max(dec[j] for j in range(i+1, n) if arr[j] < arr[i], default=0) + arr[i]

    for i in range(n):
        max_val = max(max_val, inc[i] + dec[i] - arr[i])

    return max_val

if [ $(python -c "def max_sum(arr):
    n = len(arr)
    inc = [0]*n
    dec = [0]*n
    max_val = 0

    inc[0] = arr[0]
    for i in range(1, n):
        inc[i] = max(inc[j] for j in range(i) if arr[j] < arr[i], default=0) + arr[i]

    dec[n-1] = arr[n-1]
    for i in range(n-2, -1, -1):
        dec[i] = max(dec[j] for j in range(i+1, n) if arr[j] < arr[i], default=0) + arr[i]

    for i in range(n):
        max_val = max(max_val, inc[i] + dec[i] - arr[i])

    return max_val; print(max_sum([1, 15, 51, 45, 33, 100, 12, 18, 9]))") == 194 ]
then
    echo "Test 114 passed"
else
    echo "Test 114 failed"
fi

if [ $(python -c "def max_sum(arr):
    n = len(arr)
    inc = [0]*n
    dec = [0]*n
    max_val = 0

    inc[0] = arr[0]
    for i in range(1, n):
        inc[i] = max(inc[j] for j in range(i) if arr[j] < arr[i], default=0) + arr[i]

    dec[n-1] = arr[n-1]
    for i in range(n-2, -1, -1):
        dec[i] = max(dec[j] for j in range(i+1, n) if arr[j] < arr[i], default=0) + arr[i]

    for i in range(n):
        max_val = max(max_val, inc[i] + dec[i] - arr[i])

    return max_val; print(max_sum([80, 60, 30, 40, 20, 10]))") == 210 ]
then
    echo "Test 114 passed"
else
    echo "Test 114 failed"
fi

if [ $(python -c "def max_sum(arr):
    n = len(arr)
    inc = [0]*n
    dec = [0]*n
    max_val = 0

    inc[0] = arr[0]
    for i in range(1, n):
        inc[i] = max(inc[j] for j in range(i) if arr[j] < arr[i], default=0) + arr[i]

    dec[n-1] = arr[n-1]
    for i in range(n-2, -1, -1):
        dec[i] = max(dec[j] for j in range(i+1, n) if arr[j] < arr[i], default=0) + arr[i]

    for i in range(n):
        max_val = max(max_val, inc[i] + dec[i] - arr[i])

    return max_val; print(max_sum([2, 3 ,14, 16, 21, 23, 29, 30]))") == 138 ]
then
    echo "Test 114 passed"
else
    echo "Test 114 failed"
fi

# Test 115
def babylonian_squareroot(n):
    if n < 0:
        raise ValueError("Input must be a non-negative number")
    elif n == 0:
        return 0
    else:
        x = n
        while True:
            y = (x + n / x) / 2
            if abs(y - x) < 0.001:
                return y
            x = y

# Test 116
def lps(s):
    n = len(s)
    # Create a table to store results of subproblems
    dp = [[0 for x in range(n)]for y in range(n)]
 
    # Strings of length 1 are palindrome of length 1
    for i in range(n):
        dp[i][i] = 1
 
    # Build the table. Note that the lower diagonal values of table are
    # useless and not filled in the process.
    for cl in range(2, n+1):
        for i in range(n - cl + 1):
            j = i + cl - 1
            if (s[i] == s[j] and cl == 2):
                dp[i][j] = 2
            elif (s[i] == s[j]):
                dp[i][j] = dp[i + 1][j - 1] + 2
            else:
                dp[i][j] = max(dp[i][j - 1], dp[i + 1][j])
 
    # length of longest palindromic subsequence
    return dp[0][n - 1]

if [ $(python -c "def lps(s):
    n = len(s)
    # Create a table to store results of subproblems
    dp = [[0 for x in range(n)]for y in range(n)]
 
    # Strings of length 1 are palindrome of length 1
    for i in range(n):
        dp[i][i] = 1
 
    # Build the table. Note that the lower diagonal values of table are
    # useless and not filled in the process.
    for cl in range(2, n+1):
        for i in range(n - cl + 1):
            j = i + cl - 1
            if (s[i] == s[j] and cl == 2):
                dp[i][j] = 2
            elif (s[i] == s[j]):
                dp[i][j] = dp[i + 1][j - 1] + 2
            else:
                dp[i][j] = max(dp[i][j - 1], dp[i + 1][j])
 
    # length of longest palindromic subsequence
    return dp[0][n - 1]; print(lps("TENS FOR TENS"))") == 5 ]
then
    echo "Test 116 passed"
else
    echo "Test 116 failed"
fi

if [ $(python -c "def lps(s):
    n = len(s)
    # Create a table to store results of subproblems
    dp = [[0 for x in range(n)]for y in range(n)]
 
    # Strings of length 1 are palindrome of length 1
    for i in range(n):
        dp[i][i] = 1
 
    # Build the table. Note that the lower diagonal values of table are
    # useless and not filled in the process.
    for cl in range(2, n+1):
        for i in range(n - cl + 1):
            j = i + cl - 1
            if (s[i] == s[j] and cl == 2):
                dp[i][j] = 2
            elif (s[i] == s[j]):
                dp[i][j] = dp[i + 1][j - 1] + 2
            else:
                dp[i][j] = max(dp[i][j - 1], dp[i + 1][j])
 
    # length of longest palindromic subsequence
    return dp[0][n - 1]; print(lps("CARDIO FOR CARDS"))") == 7 ]
then
    echo "Test 116 passed"
else
    echo "Test 116 failed"
fi

if [ $(python -c "def lps(s):
    n = len(s)
    # Create a table to store results of subproblems
    dp = [[0 for x in range(n)]for y in range(n)]
 
    # Strings of length 1 are palindrome of length 1
    for i in range(n):
        dp[i][i] = 1
 
    # Build the table. Note that the lower diagonal values of table are
    # useless and not filled in the process.
    for cl in range(2, n+1):
        for i in range(n - cl + 1):
            j = i + cl - 1
            if (s[i] == s[j] and cl == 2):
                dp[i][j] = 2
            elif (s[i] == s[j]):
                dp[i][j] = dp[i + 1][j - 1] + 2
            else:
                dp[i][j] = max(dp[i][j - 1], dp[i + 1][j])
 
    # length of longest palindromic subsequence
    return dp[0][n - 1]; print(lps("PART OF THE JOURNEY IS PART"))") == 9 ]
then
    echo "Test 116 passed"
else
    echo "Test 116 failed"
fi

# Test 117
import math

def harmonic_sum(n):
    sum = 0.0
    for i in range(1, n):
        sum += 1 / i
    return sum

# Test 118
def intersection_array(arr1, arr2):
    return list(set(arr1) & set(arr2))

# Test 119
def count_X(tup, x):
    return tup.count(x)

if [ $(python -c "def count_X(tup, x):
    return tup.count(x); print(count_X((10, 8, 5, 2, 10, 15, 10, 8, 5, 8, 8, 2),4))") == 0 ]
then
    echo "Test 119 passed"
else
    echo "Test 119 failed"
fi

if [ $(python -c "def count_X(tup, x):
    return tup.count(x); print(count_X((10, 8, 5, 2, 10, 15, 10, 8, 5, 8, 8, 2),10))") == 3 ]
then
    echo "Test 119 passed"
else
    echo "Test 119 failed"
fi

if [ $(python -c "def count_X(tup, x):
    return tup.count(x); print(count_X((10, 8, 5, 2, 10, 15, 10, 8, 5, 8, 8, 2),8))") == 4 ]
then
    echo "Test 119 passed"
else
    echo "Test 119 failed"
fi

# Test 120
def insert_element(lst, ele):
    result = []
    for i in lst:
        result.append(ele)
        result.append(i)
    return result

# Test 121
import cmath

def convert(complex_number):
    # 複素数の絶対値を計算
    r = abs(complex_number)
    # 複素数の偏角を計算
    theta = cmath.phase(complex_number)
    return r, theta

if [ $(python -c "import cmath

def convert(complex_number):
    # 複素数の絶対値を計算
    r = abs(complex_number)
    # 複素数の偏角を計算
    theta = cmath.phase(complex_number)
    return r, theta; print(convert(1))") == (1.0, 0.0) ]
then
    echo "Test 121 passed"
else
    echo "Test 121 failed"
fi

if [ $(python -c "import cmath

def convert(complex_number):
    # 複素数の絶対値を計算
    r = abs(complex_number)
    # 複素数の偏角を計算
    theta = cmath.phase(complex_number)
    return r, theta; print(convert(4))") == (4.0, 0.0) ]
then
    echo "Test 121 passed"
else
    echo "Test 121 failed"
fi

if [ $(python -c "import cmath

def convert(complex_number):
    # 複素数の絶対値を計算
    r = abs(complex_number)
    # 複素数の偏角を計算
    theta = cmath.phase(complex_number)
    return r, theta; print(convert(5))") == (5.0, 0.0) ]
then
    echo "Test 121 passed"
else
    echo "Test 121 failed"
fi

# Test 122
def count_integer(lst):
    return len([i for i in lst if type(i) == int])

if [ $(python -c "def count_integer(lst):
    return len([i for i in lst if type(i) == int]); print(count_integer([1,2,'abc',1.2]))") == 2 ]
then
    echo "Test 122 passed"
else
    echo "Test 122 failed"
fi

if [ $(python -c "def count_integer(lst):
    return len([i for i in lst if type(i) == int]); print(count_integer([1,2,3]))") == 3 ]
then
    echo "Test 122 passed"
else
    echo "Test 122 failed"
fi

if [ $(python -c "def count_integer(lst):
    return len([i for i in lst if type(i) == int]); print(count_integer([1,1.2,4,5.1]))") == 2 ]
then
    echo "Test 122 passed"
else
    echo "Test 122 failed"
fi

# Test 123
import itertools

def combinations_colors(lst, n):
    return list(itertools.product(lst, repeat=n))

# Test 124
def count_Primes_nums(n):
    if n < 2:
        return 0
    primes = [True] * n
    primes[0] = primes[1] = False
    for i in range(2, int(n**0.5) + 1):
        if primes[i]:
            for j in range(i*i, n, i):
                primes[j] = False
    return sum(primes)

# テスト

if [ $(python -c "def count_Primes_nums(n):
    if n < 2:
        return 0
    primes = [True] * n
    primes[0] = primes[1] = False
    for i in range(2, int(n**0.5) + 1):
        if primes[i]:
            for j in range(i*i, n, i):
                primes[j] = False
    return sum(primes)

# テスト; print(count_Primes_nums(5))") == 2 ]
then
    echo "Test 124 passed"
else
    echo "Test 124 failed"
fi

if [ $(python -c "def count_Primes_nums(n):
    if n < 2:
        return 0
    primes = [True] * n
    primes[0] = primes[1] = False
    for i in range(2, int(n**0.5) + 1):
        if primes[i]:
            for j in range(i*i, n, i):
                primes[j] = False
    return sum(primes)

# テスト; print(count_Primes_nums(10))") == 4 ]
then
    echo "Test 124 passed"
else
    echo "Test 124 failed"
fi

if [ $(python -c "def count_Primes_nums(n):
    if n < 2:
        return 0
    primes = [True] * n
    primes[0] = primes[1] = False
    for i in range(2, int(n**0.5) + 1):
        if primes[i]:
            for j in range(i*i, n, i):
                primes[j] = False
    return sum(primes)

# テスト; print(count_Primes_nums(100))") == 25 ]
then
    echo "Test 124 passed"
else
    echo "Test 124 failed"
fi

# Test 125
def swap_numbers(a, b):
    return (b, a)

# Test 126
def maximize_elements(t1, t2):
    return tuple(max(a, b) for a, b in zip(t1, t2))

if [ $(python -c "def maximize_elements(t1, t2):
    return tuple(max(a, b) for a, b in zip(t1, t2)); print(maximize_elements(((1, 3), (4, 5), (2, 9), (1, 10)), ((6, 7), (3, 9), (1, 1), (7, 3))))") == ((6, 7), (4, 9), (2, 9), (7, 10)) ]
then
    echo "Test 126 passed"
else
    echo "Test 126 failed"
fi

if [ $(python -c "def maximize_elements(t1, t2):
    return tuple(max(a, b) for a, b in zip(t1, t2)); print(maximize_elements(((2, 4), (5, 6), (3, 10), (2, 11)), ((7, 8), (4, 10), (2, 2), (8, 4))))") == ((7, 8), (5, 10), (3, 10), (8, 11)) ]
then
    echo "Test 126 passed"
else
    echo "Test 126 failed"
fi

if [ $(python -c "def maximize_elements(t1, t2):
    return tuple(max(a, b) for a, b in zip(t1, t2)); print(maximize_elements(((3, 5), (6, 7), (4, 11), (3, 12)), ((8, 9), (5, 11), (3, 3), (9, 5))))") == ((8, 9), (6, 11), (4, 11), (9, 12)) ]
then
    echo "Test 126 passed"
else
    echo "Test 126 failed"
fi

# Test 127
def newman_prime(n):
    def is_prime(num):
        if num < 2:
            return False
        for i in range(2, int(num**0.5) + 1):
            if num % i == 0:
                return False
        return True

    def S(n):
        if n == 0:
            return 0
        elif n == 1:
            return 1
        else:
            return 2*S(n-1)**2 - S(n-2)

    count = 0
    num = 0
    while count < n:
        num += 1
        if is_prime(S(num)):
            count += 1
    return S(num)

if [ $(python -c "def newman_prime(n):
    def is_prime(num):
        if num < 2:
            return False
        for i in range(2, int(num**0.5) + 1):
            if num % i == 0:
                return False
        return True

    def S(n):
        if n == 0:
            return 0
        elif n == 1:
            return 1
        else:
            return 2*S(n-1)**2 - S(n-2)

    count = 0
    num = 0
    while count < n:
        num += 1
        if is_prime(S(num)):
            count += 1
    return S(num); print(newman_prime(3))") == 7 ]
then
    echo "Test 127 passed"
else
    echo "Test 127 failed"
fi

if [ $(python -c "def newman_prime(n):
    def is_prime(num):
        if num < 2:
            return False
        for i in range(2, int(num**0.5) + 1):
            if num % i == 0:
                return False
        return True

    def S(n):
        if n == 0:
            return 0
        elif n == 1:
            return 1
        else:
            return 2*S(n-1)**2 - S(n-2)

    count = 0
    num = 0
    while count < n:
        num += 1
        if is_prime(S(num)):
            count += 1
    return S(num); print(newman_prime(4))") == 17 ]
then
    echo "Test 127 passed"
else
    echo "Test 127 failed"
fi

if [ $(python -c "def newman_prime(n):
    def is_prime(num):
        if num < 2:
            return False
        for i in range(2, int(num**0.5) + 1):
            if num % i == 0:
                return False
        return True

    def S(n):
        if n == 0:
            return 0
        elif n == 1:
            return 1
        else:
            return 2*S(n-1)**2 - S(n-2)

    count = 0
    num = 0
    while count < n:
        num += 1
        if is_prime(S(num)):
            count += 1
    return S(num); print(newman_prime(5))") == 41 ]
then
    echo "Test 127 passed"
else
    echo "Test 127 failed"
fi

# Test 128
def division_elements(t1, t2):
    return tuple(e1//e2 for e1, e2 in zip(t1, t2))

if [ $(python -c "def division_elements(t1, t2):
    return tuple(e1//e2 for e1, e2 in zip(t1, t2)); print(division_elements((10, 4, 6, 9),(5, 2, 3, 3)))") == (2, 2, 2, 3) ]
then
    echo "Test 128 passed"
else
    echo "Test 128 failed"
fi

if [ $(python -c "def division_elements(t1, t2):
    return tuple(e1//e2 for e1, e2 in zip(t1, t2)); print(division_elements((12, 6, 8, 16),(6, 3, 4, 4)))") == (2, 2, 2, 4) ]
then
    echo "Test 128 passed"
else
    echo "Test 128 failed"
fi

if [ $(python -c "def division_elements(t1, t2):
    return tuple(e1//e2 for e1, e2 in zip(t1, t2)); print(division_elements((20, 14, 36, 18),(5, 7, 6, 9)))") == (4, 2, 6, 2) ]
then
    echo "Test 128 passed"
else
    echo "Test 128 failed"
fi

# Test 129
def split_two_parts(lst, L):
    return (lst[:L], lst[L:])

# Test 130
def dog_age(human_years):
    if human_years <= 2:
        return human_years * 10.5
    else:
        return 21 + (human_years - 2) * 4

# Test 131
def list_split(lst, n):
    return [lst[i::n] for i in range(n)]

# Test 132
def lateralsurface_cube(edge_length):
    return 4 * edge_length ** 2

# Test 133
def square_Sum(n):
    return sum((2*i+1)**2 for i in range(n))

if [ $(python -c "def square_Sum(n):
    return sum((2*i+1)**2 for i in range(n)); print(square_Sum(2))") == 10 ]
then
    echo "Test 133 passed"
else
    echo "Test 133 failed"
fi

if [ $(python -c "def square_Sum(n):
    return sum((2*i+1)**2 for i in range(n)); print(square_Sum(3))") == 35 ]
then
    echo "Test 133 passed"
else
    echo "Test 133 failed"
fi

if [ $(python -c "def square_Sum(n):
    return sum((2*i+1)**2 for i in range(n)); print(square_Sum(4))") == 84 ]
then
    echo "Test 133 passed"
else
    echo "Test 133 failed"
fi

# Test 134
def find_star_num(n):
    return 1 + 36 * (n * (n - 1) // 2)

if [ $(python -c "def find_star_num(n):
    return 1 + 36 * (n * (n - 1) // 2); print(find_star_num(3))") == 37 ]
then
    echo "Test 134 passed"
else
    echo "Test 134 failed"
fi

if [ $(python -c "def find_star_num(n):
    return 1 + 36 * (n * (n - 1) // 2); print(find_star_num(4))") == 73 ]
then
    echo "Test 134 passed"
else
    echo "Test 134 failed"
fi

if [ $(python -c "def find_star_num(n):
    return 1 + 36 * (n * (n - 1) // 2); print(find_star_num(5))") == 121 ]
then
    echo "Test 134 passed"
else
    echo "Test 134 failed"
fi

# Test 135
def ascii_value(char):
    return ord(char)

# Test 136
def sum_even_and_even_index(lst):
    return sum(val for idx, val in enumerate(lst) if idx % 2 == 0 and val % 2 == 0)

if [ $(python -c "def sum_even_and_even_index(lst):
    return sum(val for idx, val in enumerate(lst) if idx % 2 == 0 and val % 2 == 0); print(sum_even_and_even_index([5, 6, 12, 1, 18, 8]))") == 30 ]
then
    echo "Test 136 passed"
else
    echo "Test 136 failed"
fi

if [ $(python -c "def sum_even_and_even_index(lst):
    return sum(val for idx, val in enumerate(lst) if idx % 2 == 0 and val % 2 == 0); print(sum_even_and_even_index([3, 20, 17, 9, 2, 10, 18, 13, 6, 18]))") == 26 ]
then
    echo "Test 136 passed"
else
    echo "Test 136 failed"
fi

if [ $(python -c "def sum_even_and_even_index(lst):
    return sum(val for idx, val in enumerate(lst) if idx % 2 == 0 and val % 2 == 0); print(sum_even_and_even_index([5, 6, 12, 1]))") == 12 ]
then
    echo "Test 136 passed"
else
    echo "Test 136 failed"
fi

# Test 137
def even_Power_Sum(n):
    return sum([(2*i)**5 for i in range(1, n+1)])

if [ $(python -c "def even_Power_Sum(n):
    return sum([(2*i)**5 for i in range(1, n+1)]); print(even_Power_Sum(2))") == 1056 ]
then
    echo "Test 137 passed"
else
    echo "Test 137 failed"
fi

if [ $(python -c "def even_Power_Sum(n):
    return sum([(2*i)**5 for i in range(1, n+1)]); print(even_Power_Sum(3))") == 8832 ]
then
    echo "Test 137 passed"
else
    echo "Test 137 failed"
fi

if [ $(python -c "def even_Power_Sum(n):
    return sum([(2*i)**5 for i in range(1, n+1)]); print(even_Power_Sum(1))") == 32 ]
then
    echo "Test 137 passed"
else
    echo "Test 137 failed"
fi

# Test 138
def rear_extract(lst):
    return [i[-1] for i in lst]

if [ $(python -c "def rear_extract(lst):
    return [i[-1] for i in lst]; print(rear_extract([(1, 'Rash', 21), (2, 'Varsha', 20), (3, 'Kil', 19)]))") == [21, 20, 19] ]
then
    echo "Test 138 passed"
else
    echo "Test 138 failed"
fi

if [ $(python -c "def rear_extract(lst):
    return [i[-1] for i in lst]; print(rear_extract([(1, 'Sai', 36), (2, 'Ayesha', 25), (3, 'Salman', 45)]))") == [36, 25, 45] ]
then
    echo "Test 138 passed"
else
    echo "Test 138 failed"
fi

if [ $(python -c "def rear_extract(lst):
    return [i[-1] for i in lst]; print(rear_extract([(1, 'Sudeep', 14), (2, 'Vandana', 36), (3, 'Dawood', 56)]))") == [14, 36, 56] ]
then
    echo "Test 138 passed"
else
    echo "Test 138 failed"
fi

# Test 139
def substract_elements(t1, t2):
    return tuple(e1 - e2 for e1, e2 in zip(t1, t2))

if [ $(python -c "def substract_elements(t1, t2):
    return tuple(e1 - e2 for e1, e2 in zip(t1, t2)); print(substract_elements((10, 4, 5), (2, 5, 18)))") == (8, -1, -13) ]
then
    echo "Test 139 passed"
else
    echo "Test 139 failed"
fi

if [ $(python -c "def substract_elements(t1, t2):
    return tuple(e1 - e2 for e1, e2 in zip(t1, t2)); print(substract_elements((11, 2, 3), (24, 45 ,16)))") == (-13, -43, -13) ]
then
    echo "Test 139 passed"
else
    echo "Test 139 failed"
fi

if [ $(python -c "def substract_elements(t1, t2):
    return tuple(e1 - e2 for e1, e2 in zip(t1, t2)); print(substract_elements((7, 18, 9), (10, 11, 12)))") == (-3, 7, -3) ]
then
    echo "Test 139 passed"
else
    echo "Test 139 failed"
fi

# Test 140
from math import comb

def even_binomial_Coeff_Sum(n):
    return sum(comb(n, i) for i in range(0, n+1, 2))

if [ $(python -c "from math import comb

def even_binomial_Coeff_Sum(n):
    return sum(comb(n, i) for i in range(0, n+1, 2)); print(even_binomial_Coeff_Sum(4))") == 8 ]
then
    echo "Test 140 passed"
else
    echo "Test 140 failed"
fi

if [ $(python -c "from math import comb

def even_binomial_Coeff_Sum(n):
    return sum(comb(n, i) for i in range(0, n+1, 2)); print(even_binomial_Coeff_Sum(6))") == 32 ]
then
    echo "Test 140 passed"
else
    echo "Test 140 failed"
fi

if [ $(python -c "from math import comb

def even_binomial_Coeff_Sum(n):
    return sum(comb(n, i) for i in range(0, n+1, 2)); print(even_binomial_Coeff_Sum(2))") == 2 ]
then
    echo "Test 140 passed"
else
    echo "Test 140 failed"
fi

# Test 141
import math

def volume_cylinder(radius, height):
    return math.pi * radius**2 * height

# Test 142
def dict_filter(dictionary, n):
    return {key: value for key, value in dictionary.items() if value >= n}

# Test 143
def count_first_elements(tup):
    for i, elem in enumerate(tup):
        if isinstance(elem, tuple):
            return i
    return None

if [ $(python -c "def count_first_elements(tup):
    for i, elem in enumerate(tup):
        if isinstance(elem, tuple):
            return i
    return None; print(count_first_elements((1, 5, 7, (4, 6), 10) ))") == 3 ]
then
    echo "Test 143 passed"
else
    echo "Test 143 failed"
fi

if [ $(python -c "def count_first_elements(tup):
    for i, elem in enumerate(tup):
        if isinstance(elem, tuple):
            return i
    return None; print(count_first_elements((2, 9, (5, 7), 11) ))") == 2 ]
then
    echo "Test 143 passed"
else
    echo "Test 143 failed"
fi

if [ $(python -c "def count_first_elements(tup):
    for i, elem in enumerate(tup):
        if isinstance(elem, tuple):
            return i
    return None; print(count_first_elements((11, 15, 5, 8, (2, 3), 8) ))") == 4 ]
then
    echo "Test 143 passed"
else
    echo "Test 143 failed"
fi

# Test 144
def is_num_decagonal(n):
    return 4*n**2 - 3*n

if [ $(python -c "def is_num_decagonal(n):
    return 4*n**2 - 3*n; print(is_num_decagonal(3))") == 27 ]
then
    echo "Test 144 passed"
else
    echo "Test 144 failed"
fi

if [ $(python -c "def is_num_decagonal(n):
    return 4*n**2 - 3*n; print(is_num_decagonal(7))") == 175 ]
then
    echo "Test 144 passed"
else
    echo "Test 144 failed"
fi

if [ $(python -c "def is_num_decagonal(n):
    return 4*n**2 - 3*n; print(is_num_decagonal(10))") == 370 ]
then
    echo "Test 144 passed"
else
    echo "Test 144 failed"
fi

# Test 145
def sequential_search(lst, item):
    if item in lst:
        return (True, lst.index(item))
    else:
        return (False, -1)

if [ $(python -c "def sequential_search(lst, item):
    if item in lst:
        return (True, lst.index(item))
    else:
        return (False, -1); print(sequential_search([11,23,58,31,56,77,43,12,65,19],31))") == (True, 3) ]
then
    echo "Test 145 passed"
else
    echo "Test 145 failed"
fi

if [ $(python -c "def sequential_search(lst, item):
    if item in lst:
        return (True, lst.index(item))
    else:
        return (False, -1); print(sequential_search([12, 32, 45, 62, 35, 47, 44, 61],61))") == (True, 7) ]
then
    echo "Test 145 passed"
else
    echo "Test 145 failed"
fi

if [ $(python -c "def sequential_search(lst, item):
    if item in lst:
        return (True, lst.index(item))
    else:
        return (False, -1); print(sequential_search([9, 10, 17, 19, 22, 39, 48, 56],48))") == (True, 6) ]
then
    echo "Test 145 passed"
else
    echo "Test 145 failed"
fi

# Test 146
def all_unique(lst):
    return len(lst) == len(set(lst))

if [ $(python -c "def all_unique(lst):
    return len(lst) == len(set(lst)); print(all_unique([1,2,3]))") == True ]
then
    echo "Test 146 passed"
else
    echo "Test 146 failed"
fi

if [ $(python -c "def all_unique(lst):
    return len(lst) == len(set(lst)); print(all_unique([1,2,1,2]))") == False ]
then
    echo "Test 146 passed"
else
    echo "Test 146 failed"
fi

if [ $(python -c "def all_unique(lst):
    return len(lst) == len(set(lst)); print(all_unique([1,2,3,4,5]))") == True ]
then
    echo "Test 146 passed"
else
    echo "Test 146 failed"
fi

# Test 147
def sub_list(list1, list2):
    return [i - j for i, j in zip(list1, list2)]

# Test 148
def validate(n):
    # Convert the integer to a string to be able to iterate over its digits
    n_str = str(n)
    
    # Create a dictionary to store the frequency of each digit
    freq = {}
    for digit in n_str:
        if digit in freq:
            freq[digit] += 1
        else:
            freq[digit] = 1
    
    # Check if the frequency of each digit is less than or equal to the digit itself
    for digit, count in freq.items():
        if count > int(digit):
            return False
    
    return True

if [ $(python -c "def validate(n):
    # Convert the integer to a string to be able to iterate over its digits
    n_str = str(n)
    
    # Create a dictionary to store the frequency of each digit
    freq = {}
    for digit in n_str:
        if digit in freq:
            freq[digit] += 1
        else:
            freq[digit] = 1
    
    # Check if the frequency of each digit is less than or equal to the digit itself
    for digit, count in freq.items():
        if count > int(digit):
            return False
    
    return True; print(validate(1234))") == True ]
then
    echo "Test 148 passed"
else
    echo "Test 148 failed"
fi

if [ $(python -c "def validate(n):
    # Convert the integer to a string to be able to iterate over its digits
    n_str = str(n)
    
    # Create a dictionary to store the frequency of each digit
    freq = {}
    for digit in n_str:
        if digit in freq:
            freq[digit] += 1
        else:
            freq[digit] = 1
    
    # Check if the frequency of each digit is less than or equal to the digit itself
    for digit, count in freq.items():
        if count > int(digit):
            return False
    
    return True; print(validate(51241))") == False ]
then
    echo "Test 148 passed"
else
    echo "Test 148 failed"
fi

if [ $(python -c "def validate(n):
    # Convert the integer to a string to be able to iterate over its digits
    n_str = str(n)
    
    # Create a dictionary to store the frequency of each digit
    freq = {}
    for digit in n_str:
        if digit in freq:
            freq[digit] += 1
        else:
            freq[digit] = 1
    
    # Check if the frequency of each digit is less than or equal to the digit itself
    for digit, count in freq.items():
        if count > int(digit):
            return False
    
    return True; print(validate(321))") == True ]
then
    echo "Test 148 passed"
else
    echo "Test 148 failed"
fi

# Test 149
def check_element(lst, element):
    return all(x == element for x in lst)

# Test 150
import re

def text_match_two_three(text):
    patterns = 'ab{2,3}'
    if re.search(patterns,  text):
        return True
    else:
        return False

# Test 151
def max_sub_array_sum_repeated(arr, k, n):
    arr = arr * k
    max_sum = float('-inf')
    curr_sum = 0
    for i in range(len(arr)):
        curr_sum += arr[i]
        if i >= n:
            curr_sum -= arr[i-n]
        max_sum = max(max_sum, curr_sum)
    return max_sum

if [ $(python -c "def max_sub_array_sum_repeated(arr, k, n):
    arr = arr * k
    max_sum = float('-inf')
    curr_sum = 0
    for i in range(len(arr)):
        curr_sum += arr[i]
        if i >= n:
            curr_sum -= arr[i-n]
        max_sum = max(max_sum, curr_sum)
    return max_sum; print(max_sub_array_sum_repeated([10, 20, -30, -1], 4, 3))") == 30 ]
then
    echo "Test 151 passed"
else
    echo "Test 151 failed"
fi

if [ $(python -c "def max_sub_array_sum_repeated(arr, k, n):
    arr = arr * k
    max_sum = float('-inf')
    curr_sum = 0
    for i in range(len(arr)):
        curr_sum += arr[i]
        if i >= n:
            curr_sum -= arr[i-n]
        max_sum = max(max_sum, curr_sum)
    return max_sum; print(max_sub_array_sum_repeated([-1, 10, 20], 3, 2))") == 59 ]
then
    echo "Test 151 passed"
else
    echo "Test 151 failed"
fi

if [ $(python -c "def max_sub_array_sum_repeated(arr, k, n):
    arr = arr * k
    max_sum = float('-inf')
    curr_sum = 0
    for i in range(len(arr)):
        curr_sum += arr[i]
        if i >= n:
            curr_sum -= arr[i-n]
        max_sum = max(max_sum, curr_sum)
    return max_sum; print(max_sub_array_sum_repeated([-1, -2, -3], 3, 3))") == -1 ]
then
    echo "Test 151 passed"
else
    echo "Test 151 failed"
fi

# Test 152
def square_Sum(n):
    return sum([i**2 for i in range(2, 2*n+1, 2)])

if [ $(python -c "def square_Sum(n):
    return sum([i**2 for i in range(2, 2*n+1, 2)]); print(square_Sum(2))") == 20 ]
then
    echo "Test 152 passed"
else
    echo "Test 152 failed"
fi

if [ $(python -c "def square_Sum(n):
    return sum([i**2 for i in range(2, 2*n+1, 2)]); print(square_Sum(3))") == 56 ]
then
    echo "Test 152 passed"
else
    echo "Test 152 failed"
fi

if [ $(python -c "def square_Sum(n):
    return sum([i**2 for i in range(2, 2*n+1, 2)]); print(square_Sum(4))") == 120 ]
then
    echo "Test 152 passed"
else
    echo "Test 152 failed"
fi

# Test 153
def max_length(lists):
    max_len = 0
    max_list = []
    for lst in lists:
        if len(lst) > max_len:
            max_len = len(lst)
            max_list = lst
    return max_len, max_list

# Test 154
def count_no_of_ways(n, k):
    # dp[i][0]はi番目の柱が前の柱と異なる色の場合の数、
    # dp[i][1]はi番目の柱が前の柱と同じ色の場合の数を表す
    dp = [[0, 0] for _ in range(n+1)]
    dp[1][0], dp[1][1] = k, 0

    for i in range(2, n+1):
        dp[i][0] = (dp[i-1][0] + dp[i-1][1]) * (k-1)
        dp[i][1] = dp[i-1][0]

    return dp[n][0] + dp[n][1]

if [ $(python -c "def count_no_of_ways(n, k):
    # dp[i][0]はi番目の柱が前の柱と異なる色の場合の数、
    # dp[i][1]はi番目の柱が前の柱と同じ色の場合の数を表す
    dp = [[0, 0] for _ in range(n+1)]
    dp[1][0], dp[1][1] = k, 0

    for i in range(2, n+1):
        dp[i][0] = (dp[i-1][0] + dp[i-1][1]) * (k-1)
        dp[i][1] = dp[i-1][0]

    return dp[n][0] + dp[n][1]; print(count_no_of_ways(2, 4))") == 16 ]
then
    echo "Test 154 passed"
else
    echo "Test 154 failed"
fi

if [ $(python -c "def count_no_of_ways(n, k):
    # dp[i][0]はi番目の柱が前の柱と異なる色の場合の数、
    # dp[i][1]はi番目の柱が前の柱と同じ色の場合の数を表す
    dp = [[0, 0] for _ in range(n+1)]
    dp[1][0], dp[1][1] = k, 0

    for i in range(2, n+1):
        dp[i][0] = (dp[i-1][0] + dp[i-1][1]) * (k-1)
        dp[i][1] = dp[i-1][0]

    return dp[n][0] + dp[n][1]; print(count_no_of_ways(3, 2))") == 6 ]
then
    echo "Test 154 passed"
else
    echo "Test 154 failed"
fi

if [ $(python -c "def count_no_of_ways(n, k):
    # dp[i][0]はi番目の柱が前の柱と異なる色の場合の数、
    # dp[i][1]はi番目の柱が前の柱と同じ色の場合の数を表す
    dp = [[0, 0] for _ in range(n+1)]
    dp[1][0], dp[1][1] = k, 0

    for i in range(2, n+1):
        dp[i][0] = (dp[i-1][0] + dp[i-1][1]) * (k-1)
        dp[i][1] = dp[i-1][0]

    return dp[n][0] + dp[n][1]; print(count_no_of_ways(4, 4))") == 228 ]
then
    echo "Test 154 passed"
else
    echo "Test 154 failed"
fi

# Test 155
def find(a, b):
    return a // b

if [ $(python -c "def find(a, b):
    return a // b; print(find(10,3))") == 3 ]
then
    echo "Test 155 passed"
else
    echo "Test 155 failed"
fi

if [ $(python -c "def find(a, b):
    return a // b; print(find(4,2))") == 2 ]
then
    echo "Test 155 passed"
else
    echo "Test 155 failed"
fi

if [ $(python -c "def find(a, b):
    return a // b; print(find(20,5))") == 4 ]
then
    echo "Test 155 passed"
else
    echo "Test 155 failed"
fi

# Test 156
import math

def otherside_rightangle(a, b):
    return math.sqrt(a**2 + b**2)

# Test 157
def max_val(lst):
    # 数値のみを抽出したリストを作成
    num_lst = [i for i in lst if isinstance(i, (int, float))]
    # 最大値を返す
    return max(num_lst)

# Test 158
def sum_div(n):
    return sum(i for i in range(1, n) if n % i == 0)

# Test 159
def get_Inv_Count(arr):
    inv_count = 0
    for i in range(len(arr)):
        for j in range(i+1, len(arr)):
            if (arr[i] > arr[j]):
                inv_count += 1
    return inv_count

if [ $(python -c "def get_Inv_Count(arr):
    inv_count = 0
    for i in range(len(arr)):
        for j in range(i+1, len(arr)):
            if (arr[i] > arr[j]):
                inv_count += 1
    return inv_count; print(get_Inv_Count([1,20,6,4,5]))") == 5 ]
then
    echo "Test 159 passed"
else
    echo "Test 159 failed"
fi

if [ $(python -c "def get_Inv_Count(arr):
    inv_count = 0
    for i in range(len(arr)):
        for j in range(i+1, len(arr)):
            if (arr[i] > arr[j]):
                inv_count += 1
    return inv_count; print(get_Inv_Count([1,2,1]))") == 1 ]
then
    echo "Test 159 passed"
else
    echo "Test 159 failed"
fi

if [ $(python -c "def get_Inv_Count(arr):
    inv_count = 0
    for i in range(len(arr)):
        for j in range(i+1, len(arr)):
            if (arr[i] > arr[j]):
                inv_count += 1
    return inv_count; print(get_Inv_Count([1,2,5,6,1]))") == 3 ]
then
    echo "Test 159 passed"
else
    echo "Test 159 failed"
fi

# Test 160
def flatten_list(nested_list):
    flat_list = []
    for i in nested_list:
        if type(i) == list:
            flat_list.extend(flatten_list(i))
        else:
            flat_list.append(i)
    return flat_list

# Test 161
def max_aggregate(lst):
    d = {}
    for name, score in lst:
        if name in d:
            d[name] += score
        else:
            d[name] = score
    max_name = max(d, key=d.get)
    return max_name, d[max_name]

# Test 162
import math

def count_binary_seq(n):
    count = 0
    for k in range(n+1):
        count += math.comb(n, k) ** 2
    return count

# Test 163
def dict_depth(d):
    if isinstance(d, dict):
        return 1 + (max(map(dict_depth, d.values())) if d else 0)
    return 0

# Test 164
def find_Element(lst, rotations, index, rotation_number):
    for i in range(rotation_number):
        rotation = rotations[i]
        start, end = rotation
        lst = lst[:start] + lst[start:end+1][::-1] + lst[end+1:]
    return lst[index]

if [ $(python -c "def find_Element(lst, rotations, index, rotation_number):
    for i in range(rotation_number):
        rotation = rotations[i]
        start, end = rotation
        lst = lst[:start] + lst[start:end+1][::-1] + lst[end+1:]
    return lst[index]; print(find_Element([1,2,3,4,5],[[0,2],[0,3]],2,1))") == 3 ]
then
    echo "Test 164 passed"
else
    echo "Test 164 failed"
fi

if [ $(python -c "def find_Element(lst, rotations, index, rotation_number):
    for i in range(rotation_number):
        rotation = rotations[i]
        start, end = rotation
        lst = lst[:start] + lst[start:end+1][::-1] + lst[end+1:]
    return lst[index]; print(find_Element([1,2,3,4],[[0,1],[0,2]],1,2))") == 3 ]
then
    echo "Test 164 passed"
else
    echo "Test 164 failed"
fi

if [ $(python -c "def find_Element(lst, rotations, index, rotation_number):
    for i in range(rotation_number):
        rotation = rotations[i]
        start, end = rotation
        lst = lst[:start] + lst[start:end+1][::-1] + lst[end+1:]
    return lst[index]; print(find_Element([1,2,3,4,5,6],[[0,1],[0,2]],1,1))") == 1 ]
then
    echo "Test 164 passed"
else
    echo "Test 164 failed"
fi

# Test 165
def start_withp(lst):
    for words in lst:
        split_words = words.split()
        p_words = [word for word in split_words if word[0].lower() == 'p']
        if len(p_words) >= 2:
            return tuple(p_words[:2])
    return None

# Test 166
def max_sum_increasing_subseq(arr, n, i, k):
    # Initialize the maximum sum increasing subsequence array
    max_sum = [0 for _ in range(n)]
    max_sum[0] = arr[0]

    # Compute the maximum sum increasing subsequence for each index
    for j in range(1, i+1):
        for l in range(j):
            if arr[j] > arr[l] and max_sum[j] < max_sum[l] + arr[j]:
                max_sum[j] = max_sum[l] + arr[j]

    # Add the kth element to the maximum sum
    max_sum[i] += arr[k]

    # Return the maximum sum
    return max(max_sum)

if [ $(python -c "def max_sum_increasing_subseq(arr, n, i, k):
    # Initialize the maximum sum increasing subsequence array
    max_sum = [0 for _ in range(n)]
    max_sum[0] = arr[0]

    # Compute the maximum sum increasing subsequence for each index
    for j in range(1, i+1):
        for l in range(j):
            if arr[j] > arr[l] and max_sum[j] < max_sum[l] + arr[j]:
                max_sum[j] = max_sum[l] + arr[j]

    # Add the kth element to the maximum sum
    max_sum[i] += arr[k]

    # Return the maximum sum
    return max(max_sum); print(max_sum_increasing_subseq([1, 101, 2, 3, 100, 4, 5 ], 7, 4, 6))") == 11 ]
then
    echo "Test 166 passed"
else
    echo "Test 166 failed"
fi

if [ $(python -c "def max_sum_increasing_subseq(arr, n, i, k):
    # Initialize the maximum sum increasing subsequence array
    max_sum = [0 for _ in range(n)]
    max_sum[0] = arr[0]

    # Compute the maximum sum increasing subsequence for each index
    for j in range(1, i+1):
        for l in range(j):
            if arr[j] > arr[l] and max_sum[j] < max_sum[l] + arr[j]:
                max_sum[j] = max_sum[l] + arr[j]

    # Add the kth element to the maximum sum
    max_sum[i] += arr[k]

    # Return the maximum sum
    return max(max_sum); print(max_sum_increasing_subseq([1, 101, 2, 3, 100, 4, 5 ], 7, 2, 5))") == 7 ]
then
    echo "Test 166 passed"
else
    echo "Test 166 failed"
fi

if [ $(python -c "def max_sum_increasing_subseq(arr, n, i, k):
    # Initialize the maximum sum increasing subsequence array
    max_sum = [0 for _ in range(n)]
    max_sum[0] = arr[0]

    # Compute the maximum sum increasing subsequence for each index
    for j in range(1, i+1):
        for l in range(j):
            if arr[j] > arr[l] and max_sum[j] < max_sum[l] + arr[j]:
                max_sum[j] = max_sum[l] + arr[j]

    # Add the kth element to the maximum sum
    max_sum[i] += arr[k]

    # Return the maximum sum
    return max(max_sum); print(max_sum_increasing_subseq([11, 15, 19, 21, 26, 28, 31], 7, 2, 4))") == 71 ]
then
    echo "Test 166 passed"
else
    echo "Test 166 failed"
fi

# Test 167
def colon_tuplex(tuplex, index, value):
    # タプルをリストに変換
    listx = list(tuplex)
    # 指定したインデックスの要素を更新
    listx[index] = [value]
    # リストをタプルに戻す
    return tuple(listx)

# Test 168
def large_product(lst1, lst2, n):
    # 2つのリストを降順にソート
    lst1.sort(reverse=True)
    lst2.sort(reverse=True)
    
    # 各リストから最大の要素を取り出し、その積を計算
    products = [lst1[i]*lst2[i] for i in range(n)]
    
    return products

# Test 169
def maximum(a, b):
    return max(a, b)

if [ $(python -c "def maximum(a, b):
    return max(a, b); print(maximum(5,10))") == 10 ]
then
    echo "Test 169 passed"
else
    echo "Test 169 failed"
fi

if [ $(python -c "def maximum(a, b):
    return max(a, b); print(maximum(-1,-2))") == -1 ]
then
    echo "Test 169 passed"
else
    echo "Test 169 failed"
fi

if [ $(python -c "def maximum(a, b):
    return max(a, b); print(maximum(9,7))") == 9 ]
then
    echo "Test 169 passed"
else
    echo "Test 169 failed"
fi

# Test 170
def string_to_tuple(s):
    return tuple(s)

# Test 171
def set_left_most_unset_bit(n):
    # Convert the number into binary then reverse it
    binary = bin(n)[2:][::-1]

    # Find the first unset bit from the left
    for i in range(len(binary)):
        if binary[i] == '0':
            # Set the bit and return the decimal form
            return n + (2 ** i)

    # If all bits are set, return the original number
    return n

if [ $(python -c "def set_left_most_unset_bit(n):
    # Convert the number into binary then reverse it
    binary = bin(n)[2:][::-1]

    # Find the first unset bit from the left
    for i in range(len(binary)):
        if binary[i] == '0':
            # Set the bit and return the decimal form
            return n + (2 ** i)

    # If all bits are set, return the original number
    return n; print(set_left_most_unset_bit(10))") == 14 ]
then
    echo "Test 171 passed"
else
    echo "Test 171 failed"
fi

if [ $(python -c "def set_left_most_unset_bit(n):
    # Convert the number into binary then reverse it
    binary = bin(n)[2:][::-1]

    # Find the first unset bit from the left
    for i in range(len(binary)):
        if binary[i] == '0':
            # Set the bit and return the decimal form
            return n + (2 ** i)

    # If all bits are set, return the original number
    return n; print(set_left_most_unset_bit(12))") == 14 ]
then
    echo "Test 171 passed"
else
    echo "Test 171 failed"
fi

if [ $(python -c "def set_left_most_unset_bit(n):
    # Convert the number into binary then reverse it
    binary = bin(n)[2:][::-1]

    # Find the first unset bit from the left
    for i in range(len(binary)):
        if binary[i] == '0':
            # Set the bit and return the decimal form
            return n + (2 ** i)

    # If all bits are set, return the original number
    return n; print(set_left_most_unset_bit(15))") == 15 ]
then
    echo "Test 171 passed"
else
    echo "Test 171 failed"
fi

# Test 172
import math

def volume_cone(radius, height):
    return (1/3) * math.pi * radius**2 * height

# Test 173
def highest_Power_of_2(n):
    i = 1
    while (i <= n):
        i *= 2
    return i // 2

if [ $(python -c "def highest_Power_of_2(n):
    i = 1
    while (i <= n):
        i *= 2
    return i // 2; print(highest_Power_of_2(10))") == 8 ]
then
    echo "Test 173 passed"
else
    echo "Test 173 failed"
fi

if [ $(python -c "def highest_Power_of_2(n):
    i = 1
    while (i <= n):
        i *= 2
    return i // 2; print(highest_Power_of_2(19))") == 16 ]
then
    echo "Test 173 passed"
else
    echo "Test 173 failed"
fi

if [ $(python -c "def highest_Power_of_2(n):
    i = 1
    while (i <= n):
        i *= 2
    return i // 2; print(highest_Power_of_2(32))") == 32 ]
then
    echo "Test 173 passed"
else
    echo "Test 173 failed"
fi

# Test 174
def find_lucas(n):
    if n == 0:
        return 2
    elif n == 1:
        return 1
    else:
        return find_lucas(n - 1) + find_lucas(n - 2)

if [ $(python -c "def find_lucas(n):
    if n == 0:
        return 2
    elif n == 1:
        return 1
    else:
        return find_lucas(n - 1) + find_lucas(n - 2); print(find_lucas(9))") == 76 ]
then
    echo "Test 174 passed"
else
    echo "Test 174 failed"
fi

if [ $(python -c "def find_lucas(n):
    if n == 0:
        return 2
    elif n == 1:
        return 1
    else:
        return find_lucas(n - 1) + find_lucas(n - 2); print(find_lucas(4))") == 7 ]
then
    echo "Test 174 passed"
else
    echo "Test 174 failed"
fi

if [ $(python -c "def find_lucas(n):
    if n == 0:
        return 2
    elif n == 1:
        return 1
    else:
        return find_lucas(n - 1) + find_lucas(n - 2); print(find_lucas(3))") == 4 ]
then
    echo "Test 174 passed"
else
    echo "Test 174 failed"
fi

# Test 175
def add_string(lst, template):
    return [template.format(i) for i in lst]

# Test 176
def convert_list_dictionary(list1, list2, list3):
    return [{list1[i]: {list2[i]: list3[i]}} for i in range(len(list1))]

# Test 177
def get_max_sum(n):
    dp = [0]*(n+1)
    for i in range(1, n+1):
        dp[i] = max(dp[i//2] + dp[i//3] + dp[i//4] + dp[i//5], i)
    return dp[n]

if [ $(python -c "def get_max_sum(n):
    dp = [0]*(n+1)
    for i in range(1, n+1):
        dp[i] = max(dp[i//2] + dp[i//3] + dp[i//4] + dp[i//5], i)
    return dp[n]; print(get_max_sum(60))") == 106 ]
then
    echo "Test 177 passed"
else
    echo "Test 177 failed"
fi

if [ $(python -c "def get_max_sum(n):
    dp = [0]*(n+1)
    for i in range(1, n+1):
        dp[i] = max(dp[i//2] + dp[i//3] + dp[i//4] + dp[i//5], i)
    return dp[n]; print(get_max_sum(10))") == 12 ]
then
    echo "Test 177 passed"
else
    echo "Test 177 failed"
fi

if [ $(python -c "def get_max_sum(n):
    dp = [0]*(n+1)
    for i in range(1, n+1):
        dp[i] = max(dp[i//2] + dp[i//3] + dp[i//4] + dp[i//5], i)
    return dp[n]; print(get_max_sum(2))") == 2 ]
then
    echo "Test 177 passed"
else
    echo "Test 177 failed"
fi

# Test 178
def max_length_list(lst):
    max_length = max(len(i) for i in lst)
    max_list = max(lst, key=len)
    return max_length, max_list

# Test 179
def check_distinct(t):
    return len(t) == len(set(t))

if [ $(python -c "def check_distinct(t):
    return len(t) == len(set(t)); print(check_distinct((1, 4, 5, 6, 1, 4)))") == False ]
then
    echo "Test 179 passed"
else
    echo "Test 179 failed"
fi

if [ $(python -c "def check_distinct(t):
    return len(t) == len(set(t)); print(check_distinct((1, 4, 5, 6)))") == True ]
then
    echo "Test 179 passed"
else
    echo "Test 179 failed"
fi

if [ $(python -c "def check_distinct(t):
    return len(t) == len(set(t)); print(check_distinct((2, 3, 4, 5, 6)))") == True ]
then
    echo "Test 179 passed"
else
    echo "Test 179 failed"
fi

# Test 180
def first_non_repeating_character(s):
    char_count = {}
    for char in s:
        if char in char_count:
            char_count[char] += 1
        else:
            char_count[char] = 1
    for char in s:
        if char_count[char] == 1:
            return char
    return None

if [ $(python -c "def first_non_repeating_character(s):
    char_count = {}
    for char in s:
        if char in char_count:
            char_count[char] += 1
        else:
            char_count[char] = 1
    for char in s:
        if char_count[char] == 1:
            return char
    return None; print(first_non_repeating_character("abcabc"))") == None ]
then
    echo "Test 180 passed"
else
    echo "Test 180 failed"
fi

if [ $(python -c "def first_non_repeating_character(s):
    char_count = {}
    for char in s:
        if char in char_count:
            char_count[char] += 1
        else:
            char_count[char] = 1
    for char in s:
        if char_count[char] == 1:
            return char
    return None; print(first_non_repeating_character("abc"))") == a ]
then
    echo "Test 180 passed"
else
    echo "Test 180 failed"
fi

if [ $(python -c "def first_non_repeating_character(s):
    char_count = {}
    for char in s:
        if char in char_count:
            char_count[char] += 1
        else:
            char_count[char] = 1
    for char in s:
        if char_count[char] == 1:
            return char
    return None; print(first_non_repeating_character("ababc"))") == c ]
then
    echo "Test 180 passed"
else
    echo "Test 180 failed"
fi

# Test 181
def check_char(s):
    if s[0] == s[-1]:
        return "Valid"
    else:
        return "Invalid"

if [ $(python -c "def check_char(s):
    if s[0] == s[-1]:
        return "Valid"
    else:
        return "Invalid"; print(check_char("abba"))") == Valid ]
then
    echo "Test 181 passed"
else
    echo "Test 181 failed"
fi

if [ $(python -c "def check_char(s):
    if s[0] == s[-1]:
        return "Valid"
    else:
        return "Invalid"; print(check_char("a"))") == Valid ]
then
    echo "Test 181 passed"
else
    echo "Test 181 failed"
fi

if [ $(python -c "def check_char(s):
    if s[0] == s[-1]:
        return "Valid"
    else:
        return "Invalid"; print(check_char("abcd"))") == Invalid ]
then
    echo "Test 181 passed"
else
    echo "Test 181 failed"
fi

# Test 182
def median_numbers(a, b, c):
    numbers = [a, b, c]
    numbers.sort()
    return numbers[1]

# Test 183
def sum_of_digits(lst):
    total = 0
    for i in lst:
        if isinstance(i, int):
            total += sum(int(digit) for digit in str(abs(i)))
    return total

# Test 184
def bitwise_xor(t1, t2):
    return tuple(a ^ b for a, b in zip(t1, t2))

if [ $(python -c "def bitwise_xor(t1, t2):
    return tuple(a ^ b for a, b in zip(t1, t2)); print(bitwise_xor((10, 4, 6, 9), (5, 2, 3, 3)))") == (15, 6, 5, 10) ]
then
    echo "Test 184 passed"
else
    echo "Test 184 failed"
fi

if [ $(python -c "def bitwise_xor(t1, t2):
    return tuple(a ^ b for a, b in zip(t1, t2)); print(bitwise_xor((11, 5, 7, 10), (6, 3, 4, 4)))") == (13, 6, 3, 14) ]
then
    echo "Test 184 passed"
else
    echo "Test 184 failed"
fi

if [ $(python -c "def bitwise_xor(t1, t2):
    return tuple(a ^ b for a, b in zip(t1, t2)); print(bitwise_xor((12, 6, 8, 11), (7, 4, 5, 6)))") == (11, 2, 13, 13) ]
then
    echo "Test 184 passed"
else
    echo "Test 184 failed"
fi

# Test 185
def extract_freq(lst):
    return len(set(lst))

if [ $(python -c "def extract_freq(lst):
    return len(set(lst)); print(extract_freq([(3, 4), (1, 2), (4, 3), (5, 6)] ))") == 3 ]
then
    echo "Test 185 passed"
else
    echo "Test 185 failed"
fi

if [ $(python -c "def extract_freq(lst):
    return len(set(lst)); print(extract_freq([(4, 15), (2, 3), (5, 4), (6, 7)] ))") == 4 ]
then
    echo "Test 185 passed"
else
    echo "Test 185 failed"
fi

if [ $(python -c "def extract_freq(lst):
    return len(set(lst)); print(extract_freq([(5, 16), (2, 3), (6, 5), (6, 9)] ))") == 4 ]
then
    echo "Test 185 passed"
else
    echo "Test 185 failed"
fi

# Test 186
def add_nested_tuples(t1, t2):
    return tuple(tuple(sum(x) for x in zip(a, b)) for a, b in zip(t1, t2))

if [ $(python -c "def add_nested_tuples(t1, t2):
    return tuple(tuple(sum(x) for x in zip(a, b)) for a, b in zip(t1, t2)); print(add_nested_tuples(((1, 3), (4, 5), (2, 9), (1, 10)), ((6, 7), (3, 9), (1, 1), (7, 3))))") == ((7, 10), (7, 14), (3, 10), (8, 13)) ]
then
    echo "Test 186 passed"
else
    echo "Test 186 failed"
fi

if [ $(python -c "def add_nested_tuples(t1, t2):
    return tuple(tuple(sum(x) for x in zip(a, b)) for a, b in zip(t1, t2)); print(add_nested_tuples(((2, 4), (5, 6), (3, 10), (2, 11)), ((7, 8), (4, 10), (2, 2), (8, 4))))") == ((9, 12), (9, 16), (5, 12), (10, 15)) ]
then
    echo "Test 186 passed"
else
    echo "Test 186 failed"
fi

if [ $(python -c "def add_nested_tuples(t1, t2):
    return tuple(tuple(sum(x) for x in zip(a, b)) for a, b in zip(t1, t2)); print(add_nested_tuples(((3, 5), (6, 7), (4, 11), (3, 12)), ((8, 9), (5, 11), (3, 3), (9, 5))))") == ((11, 14), (11, 18), (7, 14), (12, 17)) ]
then
    echo "Test 186 passed"
else
    echo "Test 186 failed"
fi

# Test 187
def minimum(a, b):
    return min(a, b)

if [ $(python -c "def minimum(a, b):
    return min(a, b); print(minimum(1,2))") == 1 ]
then
    echo "Test 187 passed"
else
    echo "Test 187 failed"
fi

if [ $(python -c "def minimum(a, b):
    return min(a, b); print(minimum(-5,-4))") == -5 ]
then
    echo "Test 187 passed"
else
    echo "Test 187 failed"
fi

if [ $(python -c "def minimum(a, b):
    return min(a, b); print(minimum(0,0))") == 0 ]
then
    echo "Test 187 passed"
else
    echo "Test 187 failed"
fi

# Test 188
def check_tuplex(tuplex, elem):
    return elem in tuplex

# Test 189
def find_Parity(n):
    return n % 2 != 0

if [ $(python -c "def find_Parity(n):
    return n % 2 != 0; print(find_Parity(12))") == False ]
then
    echo "Test 189 passed"
else
    echo "Test 189 failed"
fi

if [ $(python -c "def find_Parity(n):
    return n % 2 != 0; print(find_Parity(7))") == True ]
then
    echo "Test 189 passed"
else
    echo "Test 189 failed"
fi

if [ $(python -c "def find_Parity(n):
    return n % 2 != 0; print(find_Parity(10))") == False ]
then
    echo "Test 189 passed"
else
    echo "Test 189 failed"
fi

# Test 190
def rearrange_bigger(n):
    # 数値を文字列に変換し、その文字列をリストに変換
    n_list = list(str(n))
    # リストを逆順にソート
    n_list.sort(reverse=True)
    # ソートしたリストを文字列に変換
    n_str = ''.join(n_list)
    # 文字列を数値に変換
    n_sorted = int(n_str)
    # ソート後の数値が元の数値より大きい場合、ソート後の数値を返す
    if n_sorted > n:
        return n_sorted
    # ソート後の数値が元の数値と同じまたは小さい場合、Falseを返す
    else:
        return False

# Test 191
import heapq

def k_smallest_pairs(nums1, nums2, k):
    if not nums1 or not nums2:
        return []
    pairs = []
    for i in range(min(k, len(nums1))):
        for j in range(min(k, len(nums2))):
            if len(pairs) < k:
                heapq.heappush(pairs, (-(nums1[i] + nums2[j]), [nums1[i], nums2[j]]))
            else:
                if pairs and -(nums1[i] + nums2[j]) > pairs[0][0]:
                    heapq.heappop(pairs)
                    heapq.heappush(pairs, (-(nums1[i] + nums2[j]), [nums1[i], nums2[j]]))
                else:
                    break
    return [heapq.heappop(pairs)[1] for _ in range(k) if pairs]

# Test 192
def min_product_tuple(lst):
    return min(a*b for a, b in lst)

# Test 193
def min_val(lst):
    nums = [i for i in lst if isinstance(i, (int, float))]
    return min(nums)

# Test 194
def snake_to_camel(word):
    return ''.join(x.capitalize() for x in word.split('_'))

if [ $(python -c "def snake_to_camel(word):
    return ''.join(x.capitalize() for x in word.split('_')); print(snake_to_camel('android_tv'))") == AndroidTv ]
then
    echo "Test 194 passed"
else
    echo "Test 194 failed"
fi

if [ $(python -c "def snake_to_camel(word):
    return ''.join(x.capitalize() for x in word.split('_')); print(snake_to_camel('google_pixel'))") == GooglePixel ]
then
    echo "Test 194 passed"
else
    echo "Test 194 failed"
fi

if [ $(python -c "def snake_to_camel(word):
    return ''.join(x.capitalize() for x in word.split('_')); print(snake_to_camel('apple_watch'))") == AppleWatch ]
then
    echo "Test 194 passed"
else
    echo "Test 194 failed"
fi

# Test 195
def remove_odd(lst):
    return [i for i in lst if i % 2 == 0]

if [ $(python -c "def remove_odd(lst):
    return [i for i in lst if i % 2 == 0]; print(remove_odd([1,2,3]))") == [2] ]
then
    echo "Test 195 passed"
else
    echo "Test 195 failed"
fi

if [ $(python -c "def remove_odd(lst):
    return [i for i in lst if i % 2 == 0]; print(remove_odd([2,4,6]))") == [2, 4, 6] ]
then
    echo "Test 195 passed"
else
    echo "Test 195 failed"
fi

if [ $(python -c "def remove_odd(lst):
    return [i for i in lst if i % 2 == 0]; print(remove_odd([10,20,3]))") == [10, 20] ]
then
    echo "Test 195 passed"
else
    echo "Test 195 failed"
fi

# Test 196
def extract_nth_element(lst, n):
    return [i[n] for i in lst]

# Test 197
def overlapping(seq1, seq2):
    return any(i in seq2 for i in seq1)

if [ $(python -c "def overlapping(seq1, seq2):
    return any(i in seq2 for i in seq1); print(overlapping([1,2,3,4,5],[6,7,8,9]))") == False ]
then
    echo "Test 197 passed"
else
    echo "Test 197 failed"
fi

if [ $(python -c "def overlapping(seq1, seq2):
    return any(i in seq2 for i in seq1); print(overlapping([1,2,3],[4,5,6]))") == False ]
then
    echo "Test 197 passed"
else
    echo "Test 197 failed"
fi

if [ $(python -c "def overlapping(seq1, seq2):
    return any(i in seq2 for i in seq1); print(overlapping([1,4,5],[1,4,5]))") == True ]
then
    echo "Test 197 passed"
else
    echo "Test 197 failed"
fi

# Test 198
def max_Product(lst):
    # リストを降順にソート
    lst.sort(reverse=True)
    # 最大の積を持つペアは、最大の2つの正の数または最小の2つの負の数のいずれかである
    return max((lst[0]*lst[1], lst[-1]*lst[-2]), key=abs)

# テストケースで関数をテスト

if [ $(python -c "def max_Product(lst):
    # リストを降順にソート
    lst.sort(reverse=True)
    # 最大の積を持つペアは、最大の2つの正の数または最小の2つの負の数のいずれかである
    return max((lst[0]*lst[1], lst[-1]*lst[-2]), key=abs)

# テストケースで関数をテスト; print(max_Product([1,2,3,4,7,0,8,4]))") == (7, 8) ]
then
    echo "Test 198 passed"
else
    echo "Test 198 failed"
fi

if [ $(python -c "def max_Product(lst):
    # リストを降順にソート
    lst.sort(reverse=True)
    # 最大の積を持つペアは、最大の2つの正の数または最小の2つの負の数のいずれかである
    return max((lst[0]*lst[1], lst[-1]*lst[-2]), key=abs)

# テストケースで関数をテスト; print(max_Product([0,-1,-2,-4,5,0,-6]))") == (-4, -6) ]
then
    echo "Test 198 passed"
else
    echo "Test 198 failed"
fi

if [ $(python -c "def max_Product(lst):
    # リストを降順にソート
    lst.sort(reverse=True)
    # 最大の積を持つペアは、最大の2つの正の数または最小の2つの負の数のいずれかである
    return max((lst[0]*lst[1], lst[-1]*lst[-2]), key=abs)

# テストケースで関数をテスト; print(max_Product([1,2,3]))") == (2, 3) ]
then
    echo "Test 198 passed"
else
    echo "Test 198 failed"
fi

# Test 199
def group_tuples(lst):
    result = []
    while lst:
        first = lst[0]
        rest = lst[1:]
        group = [first[0], first[1]]
        rest = [t for t in rest if t[0] != first[0]]
        for t in lst:
            if t[0] == first[0] and t[1] not in group:
                group.append(t[1])
        result.append(tuple(group))
        lst = rest
    return result

if [ $(python -c "def group_tuples(lst):
    result = []
    while lst:
        first = lst[0]
        rest = lst[1:]
        group = [first[0], first[1]]
        rest = [t for t in rest if t[0] != first[0]]
        for t in lst:
            if t[0] == first[0] and t[1] not in group:
                group.append(t[1])
        result.append(tuple(group))
        lst = rest
    return result; print(group_tuples([('x', 'y'), ('x', 'z'), ('w', 't')]))") == [('x', 'y', 'z'), ('w', 't')] ]
then
    echo "Test 199 passed"
else
    echo "Test 199 failed"
fi

if [ $(python -c "def group_tuples(lst):
    result = []
    while lst:
        first = lst[0]
        rest = lst[1:]
        group = [first[0], first[1]]
        rest = [t for t in rest if t[0] != first[0]]
        for t in lst:
            if t[0] == first[0] and t[1] not in group:
                group.append(t[1])
        result.append(tuple(group))
        lst = rest
    return result; print(group_tuples([('a', 'b'), ('a', 'c'), ('d', 'e')]))") == [('a', 'b', 'c'), ('d', 'e')] ]
then
    echo "Test 199 passed"
else
    echo "Test 199 failed"
fi

if [ $(python -c "def group_tuples(lst):
    result = []
    while lst:
        first = lst[0]
        rest = lst[1:]
        group = [first[0], first[1]]
        rest = [t for t in rest if t[0] != first[0]]
        for t in lst:
            if t[0] == first[0] and t[1] not in group:
                group.append(t[1])
        result.append(tuple(group))
        lst = rest
    return result; print(group_tuples([('f', 'g'), ('f', 'g'), ('h', 'i')]))") == [('f', 'g', 'g'), ('h', 'i')] ]
then
    echo "Test 199 passed"
else
    echo "Test 199 failed"
fi

# Test 200
def Find_Max(lst):
    return max(lst, key=len)

if [ $(python -c "def Find_Max(lst):
    return max(lst, key=len); print(Find_Max([['A'],['A','B'],['A','B','C']]))") == ['A', 'B', 'C'] ]
then
    echo "Test 200 passed"
else
    echo "Test 200 failed"
fi

if [ $(python -c "def Find_Max(lst):
    return max(lst, key=len); print(Find_Max([[1],[1,2],[1,2,3]]))") == [1, 2, 3] ]
then
    echo "Test 200 passed"
else
    echo "Test 200 failed"
fi

if [ $(python -c "def Find_Max(lst):
    return max(lst, key=len); print(Find_Max([[1,1],[1,2,3],[1,5,6,1]]))") == [1, 5, 6, 1] ]
then
    echo "Test 200 passed"
else
    echo "Test 200 failed"
fi

# Test 201
def round_and_sum(lst):
    return sum(round(i) for i in lst) * len(lst)

# Test 202
def cube_Sum(n):
    sum = 0
    for i in range(2, 2*n+1, 2):
        sum += i**3
    return sum

if [ $(python -c "def cube_Sum(n):
    sum = 0
    for i in range(2, 2*n+1, 2):
        sum += i**3
    return sum; print(cube_Sum(2))") == 72 ]
then
    echo "Test 202 passed"
else
    echo "Test 202 failed"
fi

if [ $(python -c "def cube_Sum(n):
    sum = 0
    for i in range(2, 2*n+1, 2):
        sum += i**3
    return sum; print(cube_Sum(3))") == 288 ]
then
    echo "Test 202 passed"
else
    echo "Test 202 failed"
fi

if [ $(python -c "def cube_Sum(n):
    sum = 0
    for i in range(2, 2*n+1, 2):
        sum += i**3
    return sum; print(cube_Sum(4))") == 800 ]
then
    echo "Test 202 passed"
else
    echo "Test 202 failed"
fi

# Test 203
def concatenate_tuple(tup, sep='-'):
    return sep.join(map(str, tup))

if [ $(python -c "def concatenate_tuple(tup, sep='-'):
    return sep.join(map(str, tup)); print(concatenate_tuple(("ID", "is", 4, "UTS") ))") == ID-is-4-UTS ]
then
    echo "Test 203 passed"
else
    echo "Test 203 failed"
fi

if [ $(python -c "def concatenate_tuple(tup, sep='-'):
    return sep.join(map(str, tup)); print(concatenate_tuple(("QWE", "is", 4, "RTY") ))") == QWE-is-4-RTY ]
then
    echo "Test 203 passed"
else
    echo "Test 203 failed"
fi

if [ $(python -c "def concatenate_tuple(tup, sep='-'):
    return sep.join(map(str, tup)); print(concatenate_tuple(("ZEN", "is", 4, "OP") ))") == ZEN-is-4-OP ]
then
    echo "Test 203 passed"
else
    echo "Test 203 failed"
fi

# Test 204
def find_Average_Of_Cube(n):
    sum_of_cubes = 0
    for i in range(1, n+1):
        sum_of_cubes += i**3
    return sum_of_cubes/n

if [ $(python -c "def find_Average_Of_Cube(n):
    sum_of_cubes = 0
    for i in range(1, n+1):
        sum_of_cubes += i**3
    return sum_of_cubes/n; print(find_Average_Of_Cube(2))") == 4.5 ]
then
    echo "Test 204 passed"
else
    echo "Test 204 failed"
fi

if [ $(python -c "def find_Average_Of_Cube(n):
    sum_of_cubes = 0
    for i in range(1, n+1):
        sum_of_cubes += i**3
    return sum_of_cubes/n; print(find_Average_Of_Cube(3))") == 12 ]
then
    echo "Test 204 passed"
else
    echo "Test 204 failed"
fi

if [ $(python -c "def find_Average_Of_Cube(n):
    sum_of_cubes = 0
    for i in range(1, n+1):
        sum_of_cubes += i**3
    return sum_of_cubes/n; print(find_Average_Of_Cube(1))") == 1 ]
then
    echo "Test 204 passed"
else
    echo "Test 204 failed"
fi

# Test 205
def extract_rear(tup):
    return [word[-1] for word in tup]

if [ $(python -c "def extract_rear(tup):
    return [word[-1] for word in tup]; print(extract_rear(('Mers', 'for', 'Vers') ))") == ['s', 'r', 's'] ]
then
    echo "Test 205 passed"
else
    echo "Test 205 failed"
fi

if [ $(python -c "def extract_rear(tup):
    return [word[-1] for word in tup]; print(extract_rear(('Avenge', 'for', 'People') ))") == ['e', 'r', 'e'] ]
then
    echo "Test 205 passed"
else
    echo "Test 205 failed"
fi

if [ $(python -c "def extract_rear(tup):
    return [word[-1] for word in tup]; print(extract_rear(('Gotta', 'get', 'go') ))") == ['a', 't', 'o'] ]
then
    echo "Test 205 passed"
else
    echo "Test 205 failed"
fi

# Test 206
def count_element_in_list(lst, element):
    return sum(element in sub for sub in lst)

# Test 207
def filter_oddnumbers(lst):
    return [i for i in lst if i % 2 != 0]

# Test 208
def change_date_format(date):
    year, month, day = date.split('-')
    return f'{day}-{month}-{year}'

if [ $(python -c "def change_date_format(date):
    year, month, day = date.split('-')
    return f'{day}-{month}-{year}'; print(change_date_format("2026-01-02"))") == 02-01-2026 ]
then
    echo "Test 208 passed"
else
    echo "Test 208 failed"
fi

if [ $(python -c "def change_date_format(date):
    year, month, day = date.split('-')
    return f'{day}-{month}-{year}'; print(change_date_format("2020-11-13"))") == 13-11-2020 ]
then
    echo "Test 208 passed"
else
    echo "Test 208 failed"
fi

if [ $(python -c "def change_date_format(date):
    year, month, day = date.split('-')
    return f'{day}-{month}-{year}'; print(change_date_format("2021-04-26"))") == 26-04-2021 ]
then
    echo "Test 208 passed"
else
    echo "Test 208 failed"
fi

# Test 209
def shell_sort(arr):
    gap = len(arr) // 2
    while gap > 0:
        for i in range(gap, len(arr)):
            temp = arr[i]
            j = i
            while j >= gap and arr[j - gap] > temp:
                arr[j] = arr[j - gap]
                j -= gap
            arr[j] = temp
        gap //= 2
    return arr

if [ $(python -c "def shell_sort(arr):
    gap = len(arr) // 2
    while gap > 0:
        for i in range(gap, len(arr)):
            temp = arr[i]
            j = i
            while j >= gap and arr[j - gap] > temp:
                arr[j] = arr[j - gap]
                j -= gap
            arr[j] = temp
        gap //= 2
    return arr; print(shell_sort([12, 23, 4, 5, 3, 2, 12, 81, 56, 95]))") == [2, 3, 4, 5, 12, 12, 23, 56, 81, 95] ]
then
    echo "Test 209 passed"
else
    echo "Test 209 failed"
fi

if [ $(python -c "def shell_sort(arr):
    gap = len(arr) // 2
    while gap > 0:
        for i in range(gap, len(arr)):
            temp = arr[i]
            j = i
            while j >= gap and arr[j - gap] > temp:
                arr[j] = arr[j - gap]
                j -= gap
            arr[j] = temp
        gap //= 2
    return arr; print(shell_sort([24, 22, 39, 34, 87, 73, 68]))") == [22, 24, 34, 39, 68, 73, 87] ]
then
    echo "Test 209 passed"
else
    echo "Test 209 failed"
fi

if [ $(python -c "def shell_sort(arr):
    gap = len(arr) // 2
    while gap > 0:
        for i in range(gap, len(arr)):
            temp = arr[i]
            j = i
            while j >= gap and arr[j - gap] > temp:
                arr[j] = arr[j - gap]
                j -= gap
            arr[j] = temp
        gap //= 2
    return arr; print(shell_sort([32, 30, 16, 96, 82, 83, 74]))") == [16, 30, 32, 74, 82, 83, 96] ]
then
    echo "Test 209 passed"
else
    echo "Test 209 failed"
fi

# Test 210
def and_tuples(t1, t2):
    return tuple(a & b for a, b in zip(t1, t2))

if [ $(python -c "def and_tuples(t1, t2):
    return tuple(a & b for a, b in zip(t1, t2)); print(and_tuples((10, 4, 6, 9), (5, 2, 3, 3)))") == (0, 0, 2, 1) ]
then
    echo "Test 210 passed"
else
    echo "Test 210 failed"
fi

if [ $(python -c "def and_tuples(t1, t2):
    return tuple(a & b for a, b in zip(t1, t2)); print(and_tuples((1, 2, 3, 4), (5, 6, 7, 8)))") == (1, 2, 3, 0) ]
then
    echo "Test 210 passed"
else
    echo "Test 210 failed"
fi

if [ $(python -c "def and_tuples(t1, t2):
    return tuple(a & b for a, b in zip(t1, t2)); print(and_tuples((8, 9, 11, 12), (7, 13, 14, 17)))") == (0, 9, 10, 0) ]
then
    echo "Test 210 passed"
else
    echo "Test 210 failed"
fi

# Test 211
def parabola_directrix(a, b, c):
    return -b**2 + 4*a*c

# Test 212
def common_element(list1, list2):
    for i in list1:
        if i in list2:
            return True
    return False

# Test 213
def median_trapezium(a, b, c):
    return (a + b) / 2

# Test 214
def check_greater(lst, num):
    return all(i < num for i in lst)

if [ $(python -c "def check_greater(lst, num):
    return all(i < num for i in lst); print(check_greater([1, 2, 3, 4, 5], 4))") == False ]
then
    echo "Test 214 passed"
else
    echo "Test 214 failed"
fi

if [ $(python -c "def check_greater(lst, num):
    return all(i < num for i in lst); print(check_greater([2, 3, 4, 5, 6], 8))") == True ]
then
    echo "Test 214 passed"
else
    echo "Test 214 failed"
fi

if [ $(python -c "def check_greater(lst, num):
    return all(i < num for i in lst); print(check_greater([9, 7, 4, 8, 6, 1], 11))") == True ]
then
    echo "Test 214 passed"
else
    echo "Test 214 failed"
fi

# Test 215
import re

def text_match_one(text):
    pattern = 'ab+'
    if re.search(pattern, text):
        return True
    else:
        return False

# Test 216
def last_Digit(n):
    return n % 10

if [ $(python -c "def last_Digit(n):
    return n % 10; print(last_Digit(123))") == 3 ]
then
    echo "Test 216 passed"
else
    echo "Test 216 failed"
fi

if [ $(python -c "def last_Digit(n):
    return n % 10; print(last_Digit(25))") == 5 ]
then
    echo "Test 216 passed"
else
    echo "Test 216 failed"
fi

if [ $(python -c "def last_Digit(n):
    return n % 10; print(last_Digit(30))") == 0 ]
then
    echo "Test 216 passed"
else
    echo "Test 216 failed"
fi

# Test 217
def neg_nos(lst):
    return [i for i in lst if i < 0]

if [ $(python -c "def neg_nos(lst):
    return [i for i in lst if i < 0]; print(neg_nos([-1,4,5,-6]))") == [-1, -6] ]
then
    echo "Test 217 passed"
else
    echo "Test 217 failed"
fi

if [ $(python -c "def neg_nos(lst):
    return [i for i in lst if i < 0]; print(neg_nos([-1,-2,3,4]))") == [-1, -2] ]
then
    echo "Test 217 passed"
else
    echo "Test 217 failed"
fi

if [ $(python -c "def neg_nos(lst):
    return [i for i in lst if i < 0]; print(neg_nos([-7,-6,8,9]))") == [-7, -6] ]
then
    echo "Test 217 passed"
else
    echo "Test 217 failed"
fi

# Test 218
def remove_odd(s):
    return ''.join([s[i] for i in range(len(s)) if i % 2 != 0])

# Test 219
def count_bidirectional(lst):
    count = 0
    for i in range(len(lst)):
        if lst[i] in lst[i+1:] or tuple(reversed(lst[i])) in lst[i+1:]:
            count += 1
    return count

if [ $(python -c "def count_bidirectional(lst):
    count = 0
    for i in range(len(lst)):
        if lst[i] in lst[i+1:] or tuple(reversed(lst[i])) in lst[i+1:]:
            count += 1
    return count; print(count_bidirectional([(5, 6), (1, 2), (6, 5), (9, 1), (6, 5), (2, 1)] ))") == 3 ]
then
    echo "Test 219 passed"
else
    echo "Test 219 failed"
fi

if [ $(python -c "def count_bidirectional(lst):
    count = 0
    for i in range(len(lst)):
        if lst[i] in lst[i+1:] or tuple(reversed(lst[i])) in lst[i+1:]:
            count += 1
    return count; print(count_bidirectional([(5, 6), (1, 3), (6, 5), (9, 1), (6, 5), (2, 1)] ))") == 2 ]
then
    echo "Test 219 passed"
else
    echo "Test 219 failed"
fi

if [ $(python -c "def count_bidirectional(lst):
    count = 0
    for i in range(len(lst)):
        if lst[i] in lst[i+1:] or tuple(reversed(lst[i])) in lst[i+1:]:
            count += 1
    return count; print(count_bidirectional([(5, 6), (1, 2), (6, 5), (9, 2), (6, 5), (2, 1)] ))") == 4 ]
then
    echo "Test 219 passed"
else
    echo "Test 219 failed"
fi

# Test 220
def multiple_to_single(lst):
    return int(''.join(map(str, lst)))

# Test 221
import re

def find_adverb_position(sentence):
    words = sentence.split()
    for i, word in enumerate(words):
        if re.search(r'ly$', word):
            return (i, len(word), word)
    return None

# Test 222
def surfacearea_cube(side_length):
    return 6 * side_length ** 2

# Test 223
def positive_count(lst):
    positive_nums = [num for num in lst if num > 0]
    return round(len(positive_nums) / len(lst), 2)

# Test 224
def largest_neg(lst):
    neg_nums = [num for num in lst if num < 0]
    if not neg_nums:
        return None
    return max(neg_nums)

if [ $(python -c "def largest_neg(lst):
    neg_nums = [num for num in lst if num < 0]
    if not neg_nums:
        return None
    return max(neg_nums); print(largest_neg([1,2,3,-4,-6]))") == -6 ]
then
    echo "Test 224 passed"
else
    echo "Test 224 failed"
fi

if [ $(python -c "def largest_neg(lst):
    neg_nums = [num for num in lst if num < 0]
    if not neg_nums:
        return None
    return max(neg_nums); print(largest_neg([1,2,3,-8,-9]))") == -9 ]
then
    echo "Test 224 passed"
else
    echo "Test 224 failed"
fi

if [ $(python -c "def largest_neg(lst):
    neg_nums = [num for num in lst if num < 0]
    if not neg_nums:
        return None
    return max(neg_nums); print(largest_neg([1,2,3,4,-1]))") == -1 ]
then
    echo "Test 224 passed"
else
    echo "Test 224 failed"
fi

# Test 225
def trim_tuple(tuples, k):
    return [t[k:] for t in tuples]

if [ $(python -c "def trim_tuple(tuples, k):
    return [t[k:] for t in tuples]; print(trim_tuple([(5, 3, 2, 1, 4), (3, 4, 9, 2, 1),(9, 1, 2, 3, 5), (4, 8, 2, 1, 7)], 2))") == [(2,), (9,), (2,), (2,)] ]
then
    echo "Test 225 passed"
else
    echo "Test 225 failed"
fi

if [ $(python -c "def trim_tuple(tuples, k):
    return [t[k:] for t in tuples]; print(trim_tuple([(5, 3, 2, 1, 4), (3, 4, 9, 2, 1), (9, 1, 2, 3, 5), (4, 8, 2, 1, 7)], 1))") == [(3, 2, 1), (4, 9, 2), (1, 2, 3), (8, 2, 1)] ]
then
    echo "Test 225 passed"
else
    echo "Test 225 failed"
fi

if [ $(python -c "def trim_tuple(tuples, k):
    return [t[k:] for t in tuples]; print(trim_tuple([(7, 8, 4, 9), (11, 8, 12, 4),(4, 1, 7, 8), (3, 6, 9, 7)], 1))") == [(8, 4), (8, 12), (1, 7), (6, 9)] ]
then
    echo "Test 225 passed"
else
    echo "Test 225 failed"
fi

# Test 226
def index_multiplication(t1, t2):
    return tuple(tuple(a*b for a, b in zip(x, y)) for x, y in zip(t1, t2))

if [ $(python -c "def index_multiplication(t1, t2):
    return tuple(tuple(a*b for a, b in zip(x, y)) for x, y in zip(t1, t2)); print(index_multiplication(((1, 3), (4, 5), (2, 9), (1, 10)),((6, 7), (3, 9), (1, 1), (7, 3)) ))") == ((6, 21), (12, 45), (2, 9), (7, 30)) ]
then
    echo "Test 226 passed"
else
    echo "Test 226 failed"
fi

if [ $(python -c "def index_multiplication(t1, t2):
    return tuple(tuple(a*b for a, b in zip(x, y)) for x, y in zip(t1, t2)); print(index_multiplication(((2, 4), (5, 6), (3, 10), (2, 11)),((7, 8), (4, 10), (2, 2), (8, 4)) ))") == ((14, 32), (20, 60), (6, 20), (16, 44)) ]
then
    echo "Test 226 passed"
else
    echo "Test 226 failed"
fi

if [ $(python -c "def index_multiplication(t1, t2):
    return tuple(tuple(a*b for a, b in zip(x, y)) for x, y in zip(t1, t2)); print(index_multiplication(((3, 5), (6, 7), (4, 11), (3, 12)),((8, 9), (5, 11), (3, 3), (9, 5)) ))") == ((24, 45), (30, 77), (12, 33), (27, 60)) ]
then
    echo "Test 226 passed"
else
    echo "Test 226 failed"
fi

# Test 227
def count_Occurrence(tup, lst):
    count = 0
    for i in tup:
        if i in lst:
            count += 1
    return count

if [ $(python -c "def count_Occurrence(tup, lst):
    count = 0
    for i in tup:
        if i in lst:
            count += 1
    return count; print(count_Occurrence(('a', 'a', 'c', 'b', 'd'),['a', 'b'] ))") == 3 ]
then
    echo "Test 227 passed"
else
    echo "Test 227 failed"
fi

if [ $(python -c "def count_Occurrence(tup, lst):
    count = 0
    for i in tup:
        if i in lst:
            count += 1
    return count; print(count_Occurrence((1, 2, 3, 1, 4, 6, 7, 1, 4),[1, 4, 7]))") == 6 ]
then
    echo "Test 227 passed"
else
    echo "Test 227 failed"
fi

if [ $(python -c "def count_Occurrence(tup, lst):
    count = 0
    for i in tup:
        if i in lst:
            count += 1
    return count; print(count_Occurrence((1,2,3,4,5,6),[1,2]))") == 2 ]
then
    echo "Test 227 passed"
else
    echo "Test 227 failed"
fi

# Test 228
def cube_nums(lst):
    return [i**3 for i in lst]

# Test 229
def cal_sum(n):
    if n < 1:
        return 0
    elif n == 1:
        return 0
    elif n == 2:
        return 2
    elif n == 3:
        return 5

    a, b, c = 0, 2, 3
    sum = a + b + c
    for _ in range(4, n + 1):
        a, b, c = b, c, a + b + c
        sum += c
    return sum

if [ $(python -c "def cal_sum(n):
    if n < 1:
        return 0
    elif n == 1:
        return 0
    elif n == 2:
        return 2
    elif n == 3:
        return 5

    a, b, c = 0, 2, 3
    sum = a + b + c
    for _ in range(4, n + 1):
        a, b, c = b, c, a + b + c
        sum += c
    return sum; print(cal_sum(9))") == 49 ]
then
    echo "Test 229 passed"
else
    echo "Test 229 failed"
fi

if [ $(python -c "def cal_sum(n):
    if n < 1:
        return 0
    elif n == 1:
        return 0
    elif n == 2:
        return 2
    elif n == 3:
        return 5

    a, b, c = 0, 2, 3
    sum = a + b + c
    for _ in range(4, n + 1):
        a, b, c = b, c, a + b + c
        sum += c
    return sum; print(cal_sum(10))") == 66 ]
then
    echo "Test 229 passed"
else
    echo "Test 229 failed"
fi

if [ $(python -c "def cal_sum(n):
    if n < 1:
        return 0
    elif n == 1:
        return 0
    elif n == 2:
        return 2
    elif n == 3:
        return 5

    a, b, c = 0, 2, 3
    sum = a + b + c
    for _ in range(4, n + 1):
        a, b, c = b, c, a + b + c
        sum += c
    return sum; print(cal_sum(11))") == 88 ]
then
    echo "Test 229 passed"
else
    echo "Test 229 failed"
fi

# Test 230
def extract_string(lst, n):
    return [i for i in lst if len(i) == n]

# Test 231
def remove_whitespaces(s):
    return s.replace(' ', '')

if [ $(python -c "def remove_whitespaces(s):
    return s.replace(' ', ''); print(remove_whitespaces(' Google    Flutter '))") == GoogleFlutter ]
then
    echo "Test 231 passed"
else
    echo "Test 231 failed"
fi

if [ $(python -c "def remove_whitespaces(s):
    return s.replace(' ', ''); print(remove_whitespaces(' Google    Dart '))") == GoogleDart ]
then
    echo "Test 231 passed"
else
    echo "Test 231 failed"
fi

if [ $(python -c "def remove_whitespaces(s):
    return s.replace(' ', ''); print(remove_whitespaces(' iOS    Swift '))") == iOSSwift ]
then
    echo "Test 231 passed"
else
    echo "Test 231 failed"
fi

# Test 232
def loss_amount(cost, selling_price):
    if cost > selling_price:
        return cost - selling_price
    else:
        return 0

# Test 233
def sumofFactors(n):
    sum = 0
    for i in range(2, n + 1):
        if n % i == 0 and i % 2 == 0:
            sum += i
    return sum

if [ $(python -c "def sumofFactors(n):
    sum = 0
    for i in range(2, n + 1):
        if n % i == 0 and i % 2 == 0:
            sum += i
    return sum; print(sumofFactors(18))") == 26 ]
then
    echo "Test 233 passed"
else
    echo "Test 233 failed"
fi

if [ $(python -c "def sumofFactors(n):
    sum = 0
    for i in range(2, n + 1):
        if n % i == 0 and i % 2 == 0:
            sum += i
    return sum; print(sumofFactors(30))") == 48 ]
then
    echo "Test 233 passed"
else
    echo "Test 233 failed"
fi

if [ $(python -c "def sumofFactors(n):
    sum = 0
    for i in range(2, n + 1):
        if n % i == 0 and i % 2 == 0:
            sum += i
    return sum; print(sumofFactors(6))") == 8 ]
then
    echo "Test 233 passed"
else
    echo "Test 233 failed"
fi

# Test 234
import re

def text_match_wordz(text):
    pattern = 'z'
    if re.search(pattern, text):
        return True
    else:
        return False

# Test 235
def check_monthnumb_number(month):
    if month in [1, 3, 5, 7, 8, 10, 12]:
        return True
    else:
        return False

# Test 236
def reverse_string_list(lst):
    return [s[::-1] for s in lst]

# Test 237
def Find_Min(lst):
    return min(lst, key=len)

if [ $(python -c "def Find_Min(lst):
    return min(lst, key=len); print(Find_Min([[1],[1,2],[1,2,3]]))") == [1] ]
then
    echo "Test 237 passed"
else
    echo "Test 237 failed"
fi

if [ $(python -c "def Find_Min(lst):
    return min(lst, key=len); print(Find_Min([[1,1],[1,1,1],[1,2,7,8]]))") == [1, 1] ]
then
    echo "Test 237 passed"
else
    echo "Test 237 failed"
fi

if [ $(python -c "def Find_Min(lst):
    return min(lst, key=len); print(Find_Min([['x'],['x','y'],['x','y','z']]))") == ['x'] ]
then
    echo "Test 237 passed"
else
    echo "Test 237 failed"
fi

# Test 238
def rectangle_area(length, width):
    return length * width

# Test 239
def remove_uppercase(s):
    return ''.join(c for c in s if not c.isupper())

if [ $(python -c "def remove_uppercase(s):
    return ''.join(c for c in s if not c.isupper()); print(remove_uppercase('cAstyoUrFavoRitETVshoWs'))") == cstyoravoitshos ]
then
    echo "Test 239 passed"
else
    echo "Test 239 failed"
fi

if [ $(python -c "def remove_uppercase(s):
    return ''.join(c for c in s if not c.isupper()); print(remove_uppercase('wAtchTheinTernEtrAdIo'))") == wtchheinerntrdo ]
then
    echo "Test 239 passed"
else
    echo "Test 239 failed"
fi

if [ $(python -c "def remove_uppercase(s):
    return ''.join(c for c in s if not c.isupper()); print(remove_uppercase('VoicESeaRchAndreComMendaTionS'))") == oiceachndreomendaion ]
then
    echo "Test 239 passed"
else
    echo "Test 239 failed"
fi

# Test 240
def Extract(lst):
    return [item[0] for item in lst]

if [ $(python -c "def Extract(lst):
    return [item[0] for item in lst]; print(Extract([[1, 2], [3, 4, 5], [6, 7, 8, 9]]))") == [1, 3, 6] ]
then
    echo "Test 240 passed"
else
    echo "Test 240 failed"
fi

if [ $(python -c "def Extract(lst):
    return [item[0] for item in lst]; print(Extract([[1,2,3],[4, 5]]))") == [1, 4] ]
then
    echo "Test 240 passed"
else
    echo "Test 240 failed"
fi

if [ $(python -c "def Extract(lst):
    return [item[0] for item in lst]; print(Extract([[9,8,1],[1,2]]))") == [9, 1] ]
then
    echo "Test 240 passed"
else
    echo "Test 240 failed"
fi

# Test 241
def upper_ctr(s):
    return sum(1 for c in s if c.isupper())

if [ $(python -c "def upper_ctr(s):
    return sum(1 for c in s if c.isupper()); print(upper_ctr('PYthon'))") == 1 ]
then
    echo "Test 241 passed"
else
    echo "Test 241 failed"
fi

if [ $(python -c "def upper_ctr(s):
    return sum(1 for c in s if c.isupper()); print(upper_ctr('BigData'))") == 1 ]
then
    echo "Test 241 passed"
else
    echo "Test 241 failed"
fi

if [ $(python -c "def upper_ctr(s):
    return sum(1 for c in s if c.isupper()); print(upper_ctr('program'))") == 0 ]
then
    echo "Test 241 passed"
else
    echo "Test 241 failed"
fi

# Test 242
from itertools import combinations

def combinations_list(lst):
    result = []
    for r in range(len(lst) + 1):
        for combination in combinations(lst, r):
            result.append(list(combination))
    return result

# Test 243
def max_subarray_product(arr):
    n = len(arr)
    max_ending_here = 1
    min_ending_here = 1
    max_so_far = 0
    flag = 0

    for i in range(0, n):
        if arr[i] > 0:
            max_ending_here = max_ending_here * arr[i]
            min_ending_here = min(min_ending_here * arr[i], 1)
            flag = 1

        elif arr[i] == 0:
            max_ending_here = 1
            min_ending_here = 1

        else:
            temp = max_ending_here
            max_ending_here = max(min_ending_here * arr[i], 1)
            min_ending_here = temp * arr[i]

        if max_so_far < max_ending_here:
            max_so_far = max_ending_here

    if flag == 0 and max_so_far == 0:
        return 0

    return max_so_far

if [ $(python -c "def max_subarray_product(arr):
    n = len(arr)
    max_ending_here = 1
    min_ending_here = 1
    max_so_far = 0
    flag = 0

    for i in range(0, n):
        if arr[i] > 0:
            max_ending_here = max_ending_here * arr[i]
            min_ending_here = min(min_ending_here * arr[i], 1)
            flag = 1

        elif arr[i] == 0:
            max_ending_here = 1
            min_ending_here = 1

        else:
            temp = max_ending_here
            max_ending_here = max(min_ending_here * arr[i], 1)
            min_ending_here = temp * arr[i]

        if max_so_far < max_ending_here:
            max_so_far = max_ending_here

    if flag == 0 and max_so_far == 0:
        return 0

    return max_so_far; print(max_subarray_product([1, -2, -3, 0, 7, -8, -2]))") == 112 ]
then
    echo "Test 243 passed"
else
    echo "Test 243 failed"
fi

if [ $(python -c "def max_subarray_product(arr):
    n = len(arr)
    max_ending_here = 1
    min_ending_here = 1
    max_so_far = 0
    flag = 0

    for i in range(0, n):
        if arr[i] > 0:
            max_ending_here = max_ending_here * arr[i]
            min_ending_here = min(min_ending_here * arr[i], 1)
            flag = 1

        elif arr[i] == 0:
            max_ending_here = 1
            min_ending_here = 1

        else:
            temp = max_ending_here
            max_ending_here = max(min_ending_here * arr[i], 1)
            min_ending_here = temp * arr[i]

        if max_so_far < max_ending_here:
            max_so_far = max_ending_here

    if flag == 0 and max_so_far == 0:
        return 0

    return max_so_far; print(max_subarray_product([6, -3, -10, 0, 2]))") == 180 ]
then
    echo "Test 243 passed"
else
    echo "Test 243 failed"
fi

if [ $(python -c "def max_subarray_product(arr):
    n = len(arr)
    max_ending_here = 1
    min_ending_here = 1
    max_so_far = 0
    flag = 0

    for i in range(0, n):
        if arr[i] > 0:
            max_ending_here = max_ending_here * arr[i]
            min_ending_here = min(min_ending_here * arr[i], 1)
            flag = 1

        elif arr[i] == 0:
            max_ending_here = 1
            min_ending_here = 1

        else:
            temp = max_ending_here
            max_ending_here = max(min_ending_here * arr[i], 1)
            min_ending_here = temp * arr[i]

        if max_so_far < max_ending_here:
            max_so_far = max_ending_here

    if flag == 0 and max_so_far == 0:
        return 0

    return max_so_far; print(max_subarray_product([-2, -40, 0, -2, -3]))") == 80 ]
then
    echo "Test 243 passed"
else
    echo "Test 243 failed"
fi

# Test 244
def check_value(dictionary, value):
    return all(val == value for val in dictionary.values())

# Test 245
def drop_empty(dictionary):
    return {k: v for k, v in dictionary.items() if v is not None}

# Test 246
def max_product(arr):
    n = len(arr)
    max_product = [0 for i in range(n)]
    max_product[0] = arr[0]

    for i in range(1, n):
        max_val = 0
        for j in range(i):
            if arr[i] > arr[j]:
                max_val = max(max_val, max_product[j])
        max_product[i] = max_val * arr[i]

    return max(max_product)

if [ $(python -c "def max_product(arr):
    n = len(arr)
    max_product = [0 for i in range(n)]
    max_product[0] = arr[0]

    for i in range(1, n):
        max_val = 0
        for j in range(i):
            if arr[i] > arr[j]:
                max_val = max(max_val, max_product[j])
        max_product[i] = max_val * arr[i]

    return max(max_product); print(max_product([3, 100, 4, 5, 150, 6]))") == 3000 ]
then
    echo "Test 246 passed"
else
    echo "Test 246 failed"
fi

if [ $(python -c "def max_product(arr):
    n = len(arr)
    max_product = [0 for i in range(n)]
    max_product[0] = arr[0]

    for i in range(1, n):
        max_val = 0
        for j in range(i):
            if arr[i] > arr[j]:
                max_val = max(max_val, max_product[j])
        max_product[i] = max_val * arr[i]

    return max(max_product); print(max_product([4, 42, 55, 68, 80]))") == 50265600 ]
then
    echo "Test 246 passed"
else
    echo "Test 246 failed"
fi

if [ $(python -c "def max_product(arr):
    n = len(arr)
    max_product = [0 for i in range(n)]
    max_product[0] = arr[0]

    for i in range(1, n):
        max_val = 0
        for j in range(i):
            if arr[i] > arr[j]:
                max_val = max(max_val, max_product[j])
        max_product[i] = max_val * arr[i]

    return max(max_product); print(max_product([10, 22, 9, 33, 21, 50, 41, 60]))") == 2460 ]
then
    echo "Test 246 passed"
else
    echo "Test 246 failed"
fi

# Test 247
def add_pairwise(tup):
    return tuple(tup[i] + tup[i+1] for i in range(len(tup)-1))

if [ $(python -c "def add_pairwise(tup):
    return tuple(tup[i] + tup[i+1] for i in range(len(tup)-1)); print(add_pairwise((1, 5, 7, 8, 10)))") == (6, 12, 15, 18) ]
then
    echo "Test 247 passed"
else
    echo "Test 247 failed"
fi

if [ $(python -c "def add_pairwise(tup):
    return tuple(tup[i] + tup[i+1] for i in range(len(tup)-1)); print(add_pairwise((2, 6, 8, 9, 11)))") == (8, 14, 17, 20) ]
then
    echo "Test 247 passed"
else
    echo "Test 247 failed"
fi

if [ $(python -c "def add_pairwise(tup):
    return tuple(tup[i] + tup[i+1] for i in range(len(tup)-1)); print(add_pairwise((3, 7, 9, 10, 12)))") == (10, 16, 19, 22) ]
then
    echo "Test 247 passed"
else
    echo "Test 247 failed"
fi

# Test 248
def find_remainder(arr, n):
    product = 1
    for num in arr:
        product = (product * num) % n
    return product

# Test 249
def check_Consecutive(lst):
    return sorted(lst) == list(range(min(lst), max(lst)+1))

if [ $(python -c "def check_Consecutive(lst):
    return sorted(lst) == list(range(min(lst), max(lst)+1)); print(check_Consecutive([1,2,3,4,5]))") == True ]
then
    echo "Test 249 passed"
else
    echo "Test 249 failed"
fi

if [ $(python -c "def check_Consecutive(lst):
    return sorted(lst) == list(range(min(lst), max(lst)+1)); print(check_Consecutive([1,2,3,5,6]))") == False ]
then
    echo "Test 249 passed"
else
    echo "Test 249 failed"
fi

if [ $(python -c "def check_Consecutive(lst):
    return sorted(lst) == list(range(min(lst), max(lst)+1)); print(check_Consecutive([1,2,1]))") == False ]
then
    echo "Test 249 passed"
else
    echo "Test 249 failed"
fi

# Test 250
def tuple_intersection(list1, list2):
    # Convert each tuple in the lists to a frozenset so they can be compared regardless of order
    set1 = set(frozenset(i) for i in list1)
    set2 = set(frozenset(i) for i in list2)
    
    # Find the intersection of the two sets
    intersection = set1 & set2
    
    # Convert the frozensets back to tuples
    return set(tuple(i) for i in intersection)

if [ $(python -c "def tuple_intersection(list1, list2):
    # Convert each tuple in the lists to a frozenset so they can be compared regardless of order
    set1 = set(frozenset(i) for i in list1)
    set2 = set(frozenset(i) for i in list2)
    
    # Find the intersection of the two sets
    intersection = set1 & set2
    
    # Convert the frozensets back to tuples
    return set(tuple(i) for i in intersection); print(tuple_intersection([(3, 4), (5, 6), (9, 10), (4, 5)] , [(5, 4), (3, 4), (6, 5), (9, 11)]))") == {(4, 5), (5, 6), (3, 4)} ]
then
    echo "Test 250 passed"
else
    echo "Test 250 failed"
fi

if [ $(python -c "def tuple_intersection(list1, list2):
    # Convert each tuple in the lists to a frozenset so they can be compared regardless of order
    set1 = set(frozenset(i) for i in list1)
    set2 = set(frozenset(i) for i in list2)
    
    # Find the intersection of the two sets
    intersection = set1 & set2
    
    # Convert the frozensets back to tuples
    return set(tuple(i) for i in intersection); print(tuple_intersection([(4, 1), (7, 4), (11, 13), (17, 14)] , [(1, 4), (7, 4), (16, 12), (10, 13)]))") == {(4, 7), (1, 4)} ]
then
    echo "Test 250 passed"
else
    echo "Test 250 failed"
fi

if [ $(python -c "def tuple_intersection(list1, list2):
    # Convert each tuple in the lists to a frozenset so they can be compared regardless of order
    set1 = set(frozenset(i) for i in list1)
    set2 = set(frozenset(i) for i in list2)
    
    # Find the intersection of the two sets
    intersection = set1 & set2
    
    # Convert the frozensets back to tuples
    return set(tuple(i) for i in intersection); print(tuple_intersection([(2, 1), (3, 2), (1, 3), (1, 4)] , [(11, 2), (2, 3), (6, 2), (1, 3)]))") == {(2, 3), (1, 3)} ]
then
    echo "Test 250 passed"
else
    echo "Test 250 failed"
fi

# Test 251
def replace_char(string, old_char, new_char):
    return string.replace(old_char, new_char)

# Test 252
def sort_counter(counter):
    return sorted(counter.items(), key=lambda x: x[1], reverse=True)

# Test 253
def big_sum(lst):
    return max(lst) + min(lst)

if [ $(python -c "def big_sum(lst):
    return max(lst) + min(lst); print(big_sum([1,2,3]))") == 4 ]
then
    echo "Test 253 passed"
else
    echo "Test 253 failed"
fi

if [ $(python -c "def big_sum(lst):
    return max(lst) + min(lst); print(big_sum([-1,2,3,4]))") == 3 ]
then
    echo "Test 253 passed"
else
    echo "Test 253 failed"
fi

if [ $(python -c "def big_sum(lst):
    return max(lst) + min(lst); print(big_sum([2,3,6]))") == 8 ]
then
    echo "Test 253 passed"
else
    echo "Test 253 failed"
fi

# Test 254
def is_lower(s):
    return s.lower()

if [ $(python -c "def is_lower(s):
    return s.lower(); print(is_lower("InValid"))") == invalid ]
then
    echo "Test 254 passed"
else
    echo "Test 254 failed"
fi

if [ $(python -c "def is_lower(s):
    return s.lower(); print(is_lower("TruE"))") == true ]
then
    echo "Test 254 passed"
else
    echo "Test 254 failed"
fi

if [ $(python -c "def is_lower(s):
    return s.lower(); print(is_lower("SenTenCE"))") == sentence ]
then
    echo "Test 254 passed"
else
    echo "Test 254 failed"
fi

# Test 255
def remove_lowercase(s):
    return ''.join(c for c in s if not c.islower())

# Test 256
def first_Digit(n):
    return int(str(n)[0])

if [ $(python -c "def first_Digit(n):
    return int(str(n)[0]); print(first_Digit(123))") == 1 ]
then
    echo "Test 256 passed"
else
    echo "Test 256 failed"
fi

if [ $(python -c "def first_Digit(n):
    return int(str(n)[0]); print(first_Digit(456))") == 4 ]
then
    echo "Test 256 passed"
else
    echo "Test 256 failed"
fi

if [ $(python -c "def first_Digit(n):
    return int(str(n)[0]); print(first_Digit(12))") == 1 ]
then
    echo "Test 256 passed"
else
    echo "Test 256 failed"
fi

