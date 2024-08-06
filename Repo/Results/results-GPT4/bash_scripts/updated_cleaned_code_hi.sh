#!/bin/bash

# Test 0
def remove_Occ(s, c):
    first = s.find(c)
    last = s.rfind(c)
    if first != -1 and last != -1:
        s = s[:first] + s[first+1:last] + s[last+1:]
    return s

if [ $(python -c "def remove_Occ(s, c):
    first = s.find(c)
    last = s.rfind(c)
    if first != -1 and last != -1:
        s = s[:first] + s[first+1:last] + s[last+1:]
    return s; print(remove_Occ("hello","l"))") == heo ]
then
    echo "Test 0 passed"
else
    echo "Test 0 failed"
fi

if [ $(python -c "def remove_Occ(s, c):
    first = s.find(c)
    last = s.rfind(c)
    if first != -1 and last != -1:
        s = s[:first] + s[first+1:last] + s[last+1:]
    return s; print(remove_Occ("abcda","a"))") == bcd ]
then
    echo "Test 0 passed"
else
    echo "Test 0 failed"
fi

if [ $(python -c "def remove_Occ(s, c):
    first = s.find(c)
    last = s.rfind(c)
    if first != -1 and last != -1:
        s = s[:first] + s[first+1:last] + s[last+1:]
    return s; print(remove_Occ("PHP","P"))") == H ]
then
    echo "Test 0 passed"
else
    echo "Test 0 failed"
fi

# Test 1
def sort_matrix(mat):
    # पंक्तियों के योग के आधार पर मैट्रिक्स को क्रमबद्ध करें
    mat.sort(key=sum)
    return mat

# Test 2
def find_Volume(b, h, l):
    return 0.5 * b * h * l

if [ $(python -c "def find_Volume(b, h, l):
    return 0.5 * b * h * l; print(find_Volume(10,8,6))") == 240 ]
then
    echo "Test 2 passed"
else
    echo "Test 2 failed"
fi

if [ $(python -c "def find_Volume(b, h, l):
    return 0.5 * b * h * l; print(find_Volume(3,2,2))") == 6 ]
then
    echo "Test 2 passed"
else
    echo "Test 2 failed"
fi

if [ $(python -c "def find_Volume(b, h, l):
    return 0.5 * b * h * l; print(find_Volume(1,2,1))") == 1 ]
then
    echo "Test 2 passed"
else
    echo "Test 2 failed"
fi

# Test 3
def text_lowercase_underscore(s):
    return s == s.lower() and "_" in s and s.replace("_", "").isalpha()

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
def test_duplicate(lst):
    return len(lst) != len(set(lst))

# Test 7
def is_woodall(num):
    n = 1
    while True:
        woodall = (2**n * n) - 1
        if woodall == num:
            return True
        elif woodall > num:
            return False
        n += 1

if [ $(python -c "def is_woodall(num):
    n = 1
    while True:
        woodall = (2**n * n) - 1
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
        woodall = (2**n * n) - 1
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
        woodall = (2**n * n) - 1
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
    return n == 1/(2*n) - 1

if [ $(python -c "def check(n):
    return n == 1/(2*n) - 1; print(check(70))") == False ]
then
    echo "Test 8 passed"
else
    echo "Test 8 failed"
fi

if [ $(python -c "def check(n):
    return n == 1/(2*n) - 1; print(check(23))") == False ]
then
    echo "Test 8 passed"
else
    echo "Test 8 failed"
fi

if [ $(python -c "def check(n):
    return n == 1/(2*n) - 1; print(check(73))") == True ]
then
    echo "Test 8 passed"
else
    echo "Test 8 failed"
fi

# Test 9
def find_Max_Num(lst):
    # सबसे पहले, हमें सूची के सभी तत्वों को स्ट्रिंग में परिवर्तित करना होगा।
    str_lst = [str(i) for i in lst]
    # फिर, हमें उन्हें डिक्रीसिंग आर्डर में सॉर्ट करना होगा।
    str_lst.sort(reverse=True)
    # अंत में, हमें उन्हें एक संख्या में जोड़ना होगा।
    return int(''.join(str_lst))

if [ $(python -c "def find_Max_Num(lst):
    # सबसे पहले, हमें सूची के सभी तत्वों को स्ट्रिंग में परिवर्तित करना होगा।
    str_lst = [str(i) for i in lst]
    # फिर, हमें उन्हें डिक्रीसिंग आर्डर में सॉर्ट करना होगा।
    str_lst.sort(reverse=True)
    # अंत में, हमें उन्हें एक संख्या में जोड़ना होगा।
    return int(''.join(str_lst)); print(find_Max_Num([1,2,3]))") == 321 ]
then
    echo "Test 9 passed"
else
    echo "Test 9 failed"
fi

if [ $(python -c "def find_Max_Num(lst):
    # सबसे पहले, हमें सूची के सभी तत्वों को स्ट्रिंग में परिवर्तित करना होगा।
    str_lst = [str(i) for i in lst]
    # फिर, हमें उन्हें डिक्रीसिंग आर्डर में सॉर्ट करना होगा।
    str_lst.sort(reverse=True)
    # अंत में, हमें उन्हें एक संख्या में जोड़ना होगा।
    return int(''.join(str_lst)); print(find_Max_Num([4,5,6,1]))") == 6541 ]
then
    echo "Test 9 passed"
else
    echo "Test 9 failed"
fi

if [ $(python -c "def find_Max_Num(lst):
    # सबसे पहले, हमें सूची के सभी तत्वों को स्ट्रिंग में परिवर्तित करना होगा।
    str_lst = [str(i) for i in lst]
    # फिर, हमें उन्हें डिक्रीसिंग आर्डर में सॉर्ट करना होगा।
    str_lst.sort(reverse=True)
    # अंत में, हमें उन्हें एक संख्या में जोड़ना होगा।
    return int(''.join(str_lst)); print(find_Max_Num([1,2,3,9]))") == 9321 ]
then
    echo "Test 9 passed"
else
    echo "Test 9 failed"
fi

# Test 10
def opposite_Signs(a, b):
    return (a < 0 and b > 0) or (a > 0 and b < 0)

if [ $(python -c "def opposite_Signs(a, b):
    return (a < 0 and b > 0) or (a > 0 and b < 0); print(opposite_Signs(1,-2))") == True ]
then
    echo "Test 10 passed"
else
    echo "Test 10 failed"
fi

if [ $(python -c "def opposite_Signs(a, b):
    return (a < 0 and b > 0) or (a > 0 and b < 0); print(opposite_Signs(3,2))") == False ]
then
    echo "Test 10 passed"
else
    echo "Test 10 failed"
fi

if [ $(python -c "def opposite_Signs(a, b):
    return (a < 0 and b > 0) or (a > 0 and b < 0); print(opposite_Signs(-10,-10))") == False ]
then
    echo "Test 10 passed"
else
    echo "Test 10 failed"
fi

if [ $(python -c "def opposite_Signs(a, b):
    return (a < 0 and b > 0) or (a > 0 and b < 0); print(opposite_Signs(-2,2))") == True ]
then
    echo "Test 10 passed"
else
    echo "Test 10 failed"
fi

# Test 11
def is_octagonal(n):
    return n * (3 * n - 2)

if [ $(python -c "def is_octagonal(n):
    return n * (3 * n - 2); print(is_octagonal(5))") == 65 ]
then
    echo "Test 11 passed"
else
    echo "Test 11 failed"
fi

if [ $(python -c "def is_octagonal(n):
    return n * (3 * n - 2); print(is_octagonal(10))") == 280 ]
then
    echo "Test 11 passed"
else
    echo "Test 11 failed"
fi

if [ $(python -c "def is_octagonal(n):
    return n * (3 * n - 2); print(is_octagonal(15))") == 645 ]
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
            count += sum(int(digit) for digit in s[i:j])
    return count

if [ $(python -c "def count_Substrings(s):
    count = 0
    for i in range(len(s)):
        for j in range(i+1, len(s)+1):
            count += sum(int(digit) for digit in s[i:j])
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
            count += sum(int(digit) for digit in s[i:j])
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
            count += sum(int(digit) for digit in s[i:j])
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
    return max(abs(a-b) for a, b in lst)

if [ $(python -c "def max_difference(lst):
    return max(abs(a-b) for a, b in lst); print(max_difference([(3, 5), (1, 7), (10, 3), (1, 2)]))") == 7 ]
then
    echo "Test 14 passed"
else
    echo "Test 14 failed"
fi

if [ $(python -c "def max_difference(lst):
    return max(abs(a-b) for a, b in lst); print(max_difference([(4, 6), (2, 17), (9, 13), (11, 12)]))") == 15 ]
then
    echo "Test 14 passed"
else
    echo "Test 14 failed"
fi

if [ $(python -c "def max_difference(lst):
    return max(abs(a-b) for a, b in lst); print(max_difference([(12, 35), (21, 27), (13, 23), (41, 22)]))") == 23 ]
then
    echo "Test 14 passed"
else
    echo "Test 14 failed"
fi

# Test 15
def subject_marks(lst):
    return sorted(lst, key = lambda x: x[1])

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
    if all(array[i] <= array[i + 1] for i in range(len(array) - 1)):
        return True
    elif all(array[i] >= array[i + 1] for i in range(len(array) - 1)):
        return True
    return False

if [ $(python -c "def is_Monotonic(array):
    if all(array[i] <= array[i + 1] for i in range(len(array) - 1)):
        return True
    elif all(array[i] >= array[i + 1] for i in range(len(array) - 1)):
        return True
    return False; print(is_Monotonic([6, 5, 4, 4]))") == True ]
then
    echo "Test 19 passed"
else
    echo "Test 19 failed"
fi

if [ $(python -c "def is_Monotonic(array):
    if all(array[i] <= array[i + 1] for i in range(len(array) - 1)):
        return True
    elif all(array[i] >= array[i + 1] for i in range(len(array) - 1)):
        return True
    return False; print(is_Monotonic([1, 2, 2, 3]))") == True ]
then
    echo "Test 19 passed"
else
    echo "Test 19 failed"
fi

if [ $(python -c "def is_Monotonic(array):
    if all(array[i] <= array[i + 1] for i in range(len(array) - 1)):
        return True
    elif all(array[i] >= array[i + 1] for i in range(len(array) - 1)):
        return True
    return False; print(is_Monotonic([1, 3, 2]))") == False ]
then
    echo "Test 19 passed"
else
    echo "Test 19 failed"
fi

# Test 20
def is_sublist(main_list, sub_list):
    sub_set = set(sub_list)
    main_set = set(main_list)
    return sub_set.issubset(main_set)

# Test 21
def get_equal(tuples):
    return len(set(len(t) for t in tuples)) == 1

if [ $(python -c "def get_equal(tuples):
    return len(set(len(t) for t in tuples)) == 1; print(get_equal([(11, 22, 33), (44, 55, 66)]))") == True ]
then
    echo "Test 21 passed"
else
    echo "Test 21 failed"
fi

if [ $(python -c "def get_equal(tuples):
    return len(set(len(t) for t in tuples)) == 1; print(get_equal([(1, 2, 3), (4, 5, 6, 7)]))") == False ]
then
    echo "Test 21 passed"
else
    echo "Test 21 failed"
fi

if [ $(python -c "def get_equal(tuples):
    return len(set(len(t) for t in tuples)) == 1; print(get_equal([(1, 2), (3, 4)]))") == True ]
then
    echo "Test 21 passed"
else
    echo "Test 21 failed"
fi

# Test 22
def comb_sort(lst):
    def swap(lst, i, j):
        lst[i], lst[j] = lst[j], lst[i]

    gap = len(lst)
    shrink = 1.3
    sorted = False

    while not sorted:
        gap = int(gap / shrink)

        if gap > 1:
            sorted = False
        else:
            gap = 1
            sorted = True

        i = 0
        while i + gap < len(lst):
            if lst[i] > lst[i + gap]:
                swap(lst, i, i + gap)
                sorted = False
            i = i + 1
    return lst

if [ $(python -c "def comb_sort(lst):
    def swap(lst, i, j):
        lst[i], lst[j] = lst[j], lst[i]

    gap = len(lst)
    shrink = 1.3
    sorted = False

    while not sorted:
        gap = int(gap / shrink)

        if gap > 1:
            sorted = False
        else:
            gap = 1
            sorted = True

        i = 0
        while i + gap < len(lst):
            if lst[i] > lst[i + gap]:
                swap(lst, i, i + gap)
                sorted = False
            i = i + 1
    return lst; print(comb_sort([5, 15, 37, 25, 79]))") == [5, 15, 25, 37, 79] ]
then
    echo "Test 22 passed"
else
    echo "Test 22 failed"
fi

if [ $(python -c "def comb_sort(lst):
    def swap(lst, i, j):
        lst[i], lst[j] = lst[j], lst[i]

    gap = len(lst)
    shrink = 1.3
    sorted = False

    while not sorted:
        gap = int(gap / shrink)

        if gap > 1:
            sorted = False
        else:
            gap = 1
            sorted = True

        i = 0
        while i + gap < len(lst):
            if lst[i] > lst[i + gap]:
                swap(lst, i, i + gap)
                sorted = False
            i = i + 1
    return lst; print(comb_sort([41, 32, 15, 19, 22]))") == [15, 19, 22, 32, 41] ]
then
    echo "Test 22 passed"
else
    echo "Test 22 failed"
fi

if [ $(python -c "def comb_sort(lst):
    def swap(lst, i, j):
        lst[i], lst[j] = lst[j], lst[i]

    gap = len(lst)
    shrink = 1.3
    sorted = False

    while not sorted:
        gap = int(gap / shrink)

        if gap > 1:
            sorted = False
        else:
            gap = 1
            sorted = True

        i = 0
        while i + gap < len(lst):
            if lst[i] > lst[i + gap]:
                swap(lst, i, i + gap)
                sorted = False
            i = i + 1
    return lst; print(comb_sort([99, 15, 13, 47]))") == [13, 15, 47, 99] ]
then
    echo "Test 22 passed"
else
    echo "Test 22 failed"
fi

# Test 23
def dif_Square(n):
    i = 1
    while i * i <= n:
        j = 1
        while((j * j <= n) and (j <= i)):
            if(i * i - j * j == n):
                return True
            j += 1
        i += 1
    return False

if [ $(python -c "def dif_Square(n):
    i = 1
    while i * i <= n:
        j = 1
        while((j * j <= n) and (j <= i)):
            if(i * i - j * j == n):
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
    i = 1
    while i * i <= n:
        j = 1
        while((j * j <= n) and (j <= i)):
            if(i * i - j * j == n):
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
    i = 1
    while i * i <= n:
        j = 1
        while((j * j <= n) and (j <= i)):
            if(i * i - j * j == n):
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
def is_samepatterns(colors, patterns):
    if len(colors) != len(patterns):
        return False
    return len(set(colors)) == len(set(patterns)) and len(set(zip(colors, patterns))) == len(set(colors))

# टेस्ट केसेस

# Test 25
def find_tuples(tuples_list, k):
    result = []
    for tup in tuples_list:
        if all(i % k == 0 for i in tup):
            result.append(tup)
    return result

if [ $(python -c "def find_tuples(tuples_list, k):
    result = []
    for tup in tuples_list:
        if all(i % k == 0 for i in tup):
            result.append(tup)
    return result; print(find_tuples([(6, 24, 12), (7, 9, 6), (12, 18, 21)], 6))") == [(6, 24, 12)] ]
then
    echo "Test 25 passed"
else
    echo "Test 25 failed"
fi

if [ $(python -c "def find_tuples(tuples_list, k):
    result = []
    for tup in tuples_list:
        if all(i % k == 0 for i in tup):
            result.append(tup)
    return result; print(find_tuples([(5, 25, 30), (4, 2, 3), (7, 8, 9)], 5))") == [(5, 25, 30)] ]
then
    echo "Test 25 passed"
else
    echo "Test 25 failed"
fi

if [ $(python -c "def find_tuples(tuples_list, k):
    result = []
    for tup in tuples_list:
        if all(i % k == 0 for i in tup):
            result.append(tup)
    return result; print(find_tuples([(7, 9, 16), (8, 16, 4), (19, 17, 18)], 4))") == [(8, 16, 4)] ]
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
    return (4/3) * math.pi * (radius**3)

# Test 30
def get_Char(s):
    total = 0
    for char in s:
        total += ord(char)
    total = total % 26
    return chr(total + 97)  # 97 is the ASCII value of 'a'

if [ $(python -c "def get_Char(s):
    total = 0
    for char in s:
        total += ord(char)
    total = total % 26
    return chr(total + 97)  # 97 is the ASCII value of 'a'; print(get_Char("abc"))") == f ]
then
    echo "Test 30 passed"
else
    echo "Test 30 failed"
fi

if [ $(python -c "def get_Char(s):
    total = 0
    for char in s:
        total += ord(char)
    total = total % 26
    return chr(total + 97)  # 97 is the ASCII value of 'a'; print(get_Char("gfg"))") == t ]
then
    echo "Test 30 passed"
else
    echo "Test 30 failed"
fi

if [ $(python -c "def get_Char(s):
    total = 0
    for char in s:
        total += ord(char)
    total = total % 26
    return chr(total + 97)  # 97 is the ASCII value of 'a'; print(get_Char("ab"))") == c ]
then
    echo "Test 30 passed"
else
    echo "Test 30 failed"
fi

# Test 31
def sequence(n):
    if n == 1:
        return 1
    elif n % 2 == 0:
        return sequence(n // 2)
    else:
        return sequence((n - 1) // 2) + sequence((n + 1) // 2)

if [ $(python -c "def sequence(n):
    if n == 1:
        return 1
    elif n % 2 == 0:
        return sequence(n // 2)
    else:
        return sequence((n - 1) // 2) + sequence((n + 1) // 2); print(sequence(10))") == 6 ]
then
    echo "Test 31 passed"
else
    echo "Test 31 failed"
fi

if [ $(python -c "def sequence(n):
    if n == 1:
        return 1
    elif n % 2 == 0:
        return sequence(n // 2)
    else:
        return sequence((n - 1) // 2) + sequence((n + 1) // 2); print(sequence(2))") == 1 ]
then
    echo "Test 31 passed"
else
    echo "Test 31 failed"
fi

if [ $(python -c "def sequence(n):
    if n == 1:
        return 1
    elif n % 2 == 0:
        return sequence(n // 2)
    else:
        return sequence((n - 1) // 2) + sequence((n + 1) // 2); print(sequence(3))") == 2 ]
then
    echo "Test 31 passed"
else
    echo "Test 31 failed"
fi

# Test 32
import math

def surfacearea_sphere(radius):
    return 4 * math.pi * radius**2

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
    merged_dict = {**dict1, **dict2, **dict3}
    return merged_dict

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
def len_log(lst):
    return max(len(i) for i in lst)

if [ $(python -c "def len_log(lst):
    return max(len(i) for i in lst); print(len_log(["python","PHP","bigdata"]))") == 7 ]
then
    echo "Test 37 passed"
else
    echo "Test 37 failed"
fi

if [ $(python -c "def len_log(lst):
    return max(len(i) for i in lst); print(len_log(["a","ab","abc"]))") == 3 ]
then
    echo "Test 37 passed"
else
    echo "Test 37 failed"
fi

if [ $(python -c "def len_log(lst):
    return max(len(i) for i in lst); print(len_log(["small","big","tall"]))") == 5 ]
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
    if len(n) < 3:
        return False
    for i in range(2, len(n)):
        if n[i] != n[i-2]:
            return False
    return True

if [ $(python -c "def is_undulating(n):
    n = str(n)
    if len(n) < 3:
        return False
    for i in range(2, len(n)):
        if n[i] != n[i-2]:
            return False
    return True; print(is_undulating(1212121))") == True ]
then
    echo "Test 39 passed"
else
    echo "Test 39 failed"
fi

if [ $(python -c "def is_undulating(n):
    n = str(n)
    if len(n) < 3:
        return False
    for i in range(2, len(n)):
        if n[i] != n[i-2]:
            return False
    return True; print(is_undulating(1991))") == False ]
then
    echo "Test 39 passed"
else
    echo "Test 39 failed"
fi

if [ $(python -c "def is_undulating(n):
    n = str(n)
    if len(n) < 3:
        return False
    for i in range(2, len(n)):
        if n[i] != n[i-2]:
            return False
    return True; print(is_undulating(121))") == True ]
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
    return min(lst, key=lambda x:x[1])[0]

if [ $(python -c "def index_minimum(lst):
    return min(lst, key=lambda x:x[1])[0]; print(index_minimum([('Rash', 143), ('Manjeet', 200), ('Varsha', 100)]))") == Varsha ]
then
    echo "Test 41 passed"
else
    echo "Test 41 failed"
fi

if [ $(python -c "def index_minimum(lst):
    return min(lst, key=lambda x:x[1])[0]; print(index_minimum([('Yash', 185), ('Dawood', 125), ('Sanya', 175)]))") == Dawood ]
then
    echo "Test 41 passed"
else
    echo "Test 41 failed"
fi

if [ $(python -c "def index_minimum(lst):
    return min(lst, key=lambda x:x[1])[0]; print(index_minimum([('Sai', 345), ('Salman', 145), ('Ayesha', 96)]))") == Ayesha ]
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
    frequency_dict = {}
    for sublist in lists:
        for item in sublist:
            if item in frequency_dict:
                frequency_dict[item] += 1
            else:
                frequency_dict[item] = 1
    return frequency_dict

# Test 45
import math

def multiply_num(lst):
    result = 1
    for num in lst:
        result *= num
    return result / len(lst)

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
def kth_element(lst, k):
    # सरणी को छोटे से बड़े क्रम में सॉर्ट करें
    lst.sort()
    # kth तत्व लौटाएं
    return lst[k-1]

if [ $(python -c "def kth_element(lst, k):
    # सरणी को छोटे से बड़े क्रम में सॉर्ट करें
    lst.sort()
    # kth तत्व लौटाएं
    return lst[k-1]; print(kth_element([12,3,5,7,19], 2))") == 3 ]
then
    echo "Test 48 passed"
else
    echo "Test 48 failed"
fi

if [ $(python -c "def kth_element(lst, k):
    # सरणी को छोटे से बड़े क्रम में सॉर्ट करें
    lst.sort()
    # kth तत्व लौटाएं
    return lst[k-1]; print(kth_element([17,24,8,23], 3))") == 8 ]
then
    echo "Test 48 passed"
else
    echo "Test 48 failed"
fi

if [ $(python -c "def kth_element(lst, k):
    # सरणी को छोटे से बड़े क्रम में सॉर्ट करें
    lst.sort()
    # kth तत्व लौटाएं
    return lst[k-1]; print(kth_element([16,21,25,36,4], 4))") == 36 ]
then
    echo "Test 48 passed"
else
    echo "Test 48 failed"
fi

# Test 49
def snake_to_camel(word):
    return ''.join(x.capitalize() or '_' for x in word.split('_'))

# Test 50
def eulerian_num(n, m):
    if m >= n or m < 0:
        return 0
    if m == 0 or m == n - 1:
        return 1
    return (n - m) * eulerian_num(n - 1, m - 1) + (m + 1) * eulerian_num(n - 1, m)

if [ $(python -c "def eulerian_num(n, m):
    if m >= n or m < 0:
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
    if m >= n or m < 0:
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
    if m >= n or m < 0:
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
    # तीनों सूचियों को एक साथ जोड़ें
    merged_list = list1 + list2 + list3
    # मर्ज की गई सूची को क्रमबद्ध करें
    sorted_list = sorted(merged_list)
    return sorted_list

# Test 55
def odd_Equivalent(binary_string, n):
    # बाइनरी स्ट्रिंग को घुमाने के लिए एक लिस्ट में बदलें
    binary_list = list(binary_string)
    odd_count = 0

    # बाइनरी स्ट्रिंग को n बार घुमाएं
    for i in range(n):
        # बाइनरी स्ट्रिंग को एक बार घुमाएं
        binary_list = [binary_list[-1]] + binary_list[:-1]

        # बाइनरी स्ट्रिंग को दसदीपी संख्या में बदलें
        decimal_number = int(''.join(binary_list), 2)

        # यदि दसदीपी संख्या विषम है, तो odd_count बढ़ाएं
        if decimal_number % 2 != 0:
            odd_count += 1

    return odd_count

if [ $(python -c "def odd_Equivalent(binary_string, n):
    # बाइनरी स्ट्रिंग को घुमाने के लिए एक लिस्ट में बदलें
    binary_list = list(binary_string)
    odd_count = 0

    # बाइनरी स्ट्रिंग को n बार घुमाएं
    for i in range(n):
        # बाइनरी स्ट्रिंग को एक बार घुमाएं
        binary_list = [binary_list[-1]] + binary_list[:-1]

        # बाइनरी स्ट्रिंग को दसदीपी संख्या में बदलें
        decimal_number = int(''.join(binary_list), 2)

        # यदि दसदीपी संख्या विषम है, तो odd_count बढ़ाएं
        if decimal_number % 2 != 0:
            odd_count += 1

    return odd_count; print(odd_Equivalent("011001",6))") == 3 ]
then
    echo "Test 55 passed"
else
    echo "Test 55 failed"
fi

if [ $(python -c "def odd_Equivalent(binary_string, n):
    # बाइनरी स्ट्रिंग को घुमाने के लिए एक लिस्ट में बदलें
    binary_list = list(binary_string)
    odd_count = 0

    # बाइनरी स्ट्रिंग को n बार घुमाएं
    for i in range(n):
        # बाइनरी स्ट्रिंग को एक बार घुमाएं
        binary_list = [binary_list[-1]] + binary_list[:-1]

        # बाइनरी स्ट्रिंग को दसदीपी संख्या में बदलें
        decimal_number = int(''.join(binary_list), 2)

        # यदि दसदीपी संख्या विषम है, तो odd_count बढ़ाएं
        if decimal_number % 2 != 0:
            odd_count += 1

    return odd_count; print(odd_Equivalent("11011",5))") == 4 ]
then
    echo "Test 55 passed"
else
    echo "Test 55 failed"
fi

if [ $(python -c "def odd_Equivalent(binary_string, n):
    # बाइनरी स्ट्रिंग को घुमाने के लिए एक लिस्ट में बदलें
    binary_list = list(binary_string)
    odd_count = 0

    # बाइनरी स्ट्रिंग को n बार घुमाएं
    for i in range(n):
        # बाइनरी स्ट्रिंग को एक बार घुमाएं
        binary_list = [binary_list[-1]] + binary_list[:-1]

        # बाइनरी स्ट्रिंग को दसदीपी संख्या में बदलें
        decimal_number = int(''.join(binary_list), 2)

        # यदि दसदीपी संख्या विषम है, तो odd_count बढ़ाएं
        if decimal_number % 2 != 0:
            odd_count += 1

    return odd_count; print(odd_Equivalent("1010",4))") == 2 ]
then
    echo "Test 55 passed"
else
    echo "Test 55 failed"
fi

# Test 56
def common_in_nested_lists(nested_lists):
    # पहली सूची को सेट में परिवर्तित करें
    common_set = set(nested_lists[0])
    
    # बाकी सभी सूचियों के लिए, सेट का इंटरसेक्शन लें
    for lst in nested_lists[1:]:
        common_set.intersection_update(lst)
    
    # सामान्य तत्वों की सूची लौटाएं
    return list(common_set)

# Test 57
def check_integer(s):
    try:
        int(s)
        return True
    except ValueError:
        return False

# Test 58
def empty_dit(lst):
    if type(lst) is dict:
        return not bool(lst)
    return all(not bool(d) for d in lst)

# Test 59
def tuple_to_int(tup):
    str_num = ''.join(map(str, tup))
    return int(str_num)

# Test 60
def list_to_float(lst):
    return [(float(i[0]), float(i[1])) for i in lst]

if [ $(python -c "def list_to_float(lst):
    return [(float(i[0]), float(i[1])) for i in lst]; print(list_to_float( [("3", "4"), ("1", "26.45"), ("7.32", "8"), ("4", "8")] ))") == [(3.0, 4.0), (1.0, 26.45), (7.32, 8.0), (4.0, 8.0)] ]
then
    echo "Test 60 passed"
else
    echo "Test 60 failed"
fi

if [ $(python -c "def list_to_float(lst):
    return [(float(i[0]), float(i[1])) for i in lst]; print(list_to_float( [("4", "4"), ("2", "27"), ("4.12", "9"), ("7", "11")] ))") == [(4.0, 4.0), (2.0, 27.0), (4.12, 9.0), (7.0, 11.0)] ]
then
    echo "Test 60 passed"
else
    echo "Test 60 failed"
fi

if [ $(python -c "def list_to_float(lst):
    return [(float(i[0]), float(i[1])) for i in lst]; print(list_to_float( [("6", "78"), ("5", "26.45"), ("1.33", "4"), ("82", "13")] ))") == [(6.0, 78.0), (5.0, 26.45), (1.33, 4.0), (82.0, 13.0)] ]
then
    echo "Test 60 passed"
else
    echo "Test 60 failed"
fi

# Test 61
def string_to_list(s):
    return s.split()

# Test 62
def search(lst):
    for i in lst:
        if lst.count(i) == 1:
            return i

if [ $(python -c "def search(lst):
    for i in lst:
        if lst.count(i) == 1:
            return i; print(search([1,1,2,2,3]))") == 3 ]
then
    echo "Test 62 passed"
else
    echo "Test 62 failed"
fi

if [ $(python -c "def search(lst):
    for i in lst:
        if lst.count(i) == 1:
            return i; print(search([1,1,3,3,4,4,5,5,7,7,8]))") == 8 ]
then
    echo "Test 62 passed"
else
    echo "Test 62 failed"
fi

if [ $(python -c "def search(lst):
    for i in lst:
        if lst.count(i) == 1:
            return i; print(search([1,2,2,3,3,4,4]))") == 1 ]
then
    echo "Test 62 passed"
else
    echo "Test 62 failed"
fi

# Test 63
def max_product_tuple(lst):
    max_product = 0
    for tup in lst:
        product = tup[0] * tup[1]
        if product > max_product:
            max_product = product
    return max_product

# Test 64
def sum_of_proper_divisors(n):
    sum = 1
    for i in range(2, int(n**0.5) + 1):
        if n % i == 0:
            if i == (n / i):
                sum = sum + i
            else:
                sum = sum + i + n/i
    return sum

def amicable_numbers_sum(limit):
    sum = 0
    for i in range(1, limit):
        div_sum = sum_of_proper_divisors(i)
        if div_sum < limit:
            if i == sum_of_proper_divisors(div_sum) and i != div_sum:
                sum += i
    return sum

# Test 65
import cmath

def angle_complex(real, imaginary):
    complex_number = real + imaginary
    return cmath.phase(complex_number)

# Test 66
def find_length(binary_string):
    max_diff = 0
    for i in range(len(binary_string)):
        for j in range(i, len(binary_string)):
            substring = binary_string[i:j+1]
            count_0 = substring.count('0')
            count_1 = substring.count('1')
            diff = abs(count_0 - count_1)
            if diff > max_diff:
                max_diff = diff
    return max_diff

if [ $(python -c "def find_length(binary_string):
    max_diff = 0
    for i in range(len(binary_string)):
        for j in range(i, len(binary_string)):
            substring = binary_string[i:j+1]
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

if [ $(python -c "def find_length(binary_string):
    max_diff = 0
    for i in range(len(binary_string)):
        for j in range(i, len(binary_string)):
            substring = binary_string[i:j+1]
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

if [ $(python -c "def find_length(binary_string):
    max_diff = 0
    for i in range(len(binary_string)):
        for j in range(i, len(binary_string)):
            substring = binary_string[i:j+1]
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
    # दोनों संख्याओं के लिए भाजकों की सूची बनाएं
    divisors_num1 = [i for i in range(1, num1 + 1) if num1 % i == 0]
    divisors_num2 = [i for i in range(1, num2 + 1) if num2 % i == 0]

    # दोनों सूचियों में सामान्य भाजकों की सूची बनाएं
    common_divisors = list(set(divisors_num1) & set(divisors_num2))

    # सामान्य भाजकों का योग लौटाएं
    return sum(common_divisors)

if [ $(python -c "def sum_of_common_divisors(num1, num2):
    # दोनों संख्याओं के लिए भाजकों की सूची बनाएं
    divisors_num1 = [i for i in range(1, num1 + 1) if num1 % i == 0]
    divisors_num2 = [i for i in range(1, num2 + 1) if num2 % i == 0]

    # दोनों सूचियों में सामान्य भाजकों की सूची बनाएं
    common_divisors = list(set(divisors_num1) & set(divisors_num2))

    # सामान्य भाजकों का योग लौटाएं
    return sum(common_divisors); print(sum_of_common_divisors(10,15))") == 6 ]
then
    echo "Test 67 passed"
else
    echo "Test 67 failed"
fi

if [ $(python -c "def sum_of_common_divisors(num1, num2):
    # दोनों संख्याओं के लिए भाजकों की सूची बनाएं
    divisors_num1 = [i for i in range(1, num1 + 1) if num1 % i == 0]
    divisors_num2 = [i for i in range(1, num2 + 1) if num2 % i == 0]

    # दोनों सूचियों में सामान्य भाजकों की सूची बनाएं
    common_divisors = list(set(divisors_num1) & set(divisors_num2))

    # सामान्य भाजकों का योग लौटाएं
    return sum(common_divisors); print(sum_of_common_divisors(100,150))") == 93 ]
then
    echo "Test 67 passed"
else
    echo "Test 67 failed"
fi

if [ $(python -c "def sum_of_common_divisors(num1, num2):
    # दोनों संख्याओं के लिए भाजकों की सूची बनाएं
    divisors_num1 = [i for i in range(1, num1 + 1) if num1 % i == 0]
    divisors_num2 = [i for i in range(1, num2 + 1) if num2 % i == 0]

    # दोनों सूचियों में सामान्य भाजकों की सूची बनाएं
    common_divisors = list(set(divisors_num1) & set(divisors_num2))

    # सामान्य भाजकों का योग लौटाएं
    return sum(common_divisors); print(sum_of_common_divisors(4,6))") == 3 ]
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
    # वर्ग की आकार की गणना
    size = len(matrix)

    # वर्ग की सभी पंक्तियों, स्तंभों और विकर्णों का योग गणना
    sums = [sum(row) for row in matrix] + [sum(column) for column in zip(*matrix)] + [sum(matrix[i][i] for i in range(size))] + [sum(matrix[i][size-i-1] for i in range(size))]

    # सभी योग एक समान हैं, तो यह एक जादुई वर्ग है
    return len(set(sums)) == 1

# Test 71
def max_occurrences(lst):
    return max(set(lst), key = lst.count)

# Test 72
def reverse_vowels(s):
    vowels = 'aeiouAEIOU'
    s_list = list(s)
    i, j = 0, len(s) - 1
    while i < j:
        if s_list[i] not in vowels:
            i += 1
        elif s_list[j] not in vowels:
            j -= 1
        else:
            s_list[i], s_list[j] = s_list[j], s_list[i]
            i, j = i + 1, j - 1
    return ''.join(s_list)

if [ $(python -c "def reverse_vowels(s):
    vowels = 'aeiouAEIOU'
    s_list = list(s)
    i, j = 0, len(s) - 1
    while i < j:
        if s_list[i] not in vowels:
            i += 1
        elif s_list[j] not in vowels:
            j -= 1
        else:
            s_list[i], s_list[j] = s_list[j], s_list[i]
            i, j = i + 1, j - 1
    return ''.join(s_list); print(reverse_vowels("Python"))") == Python ]
then
    echo "Test 72 passed"
else
    echo "Test 72 failed"
fi

if [ $(python -c "def reverse_vowels(s):
    vowels = 'aeiouAEIOU'
    s_list = list(s)
    i, j = 0, len(s) - 1
    while i < j:
        if s_list[i] not in vowels:
            i += 1
        elif s_list[j] not in vowels:
            j -= 1
        else:
            s_list[i], s_list[j] = s_list[j], s_list[i]
            i, j = i + 1, j - 1
    return ''.join(s_list); print(reverse_vowels("USA"))") == ASU ]
then
    echo "Test 72 passed"
else
    echo "Test 72 failed"
fi

if [ $(python -c "def reverse_vowels(s):
    vowels = 'aeiouAEIOU'
    s_list = list(s)
    i, j = 0, len(s) - 1
    while i < j:
        if s_list[i] not in vowels:
            i += 1
        elif s_list[j] not in vowels:
            j -= 1
        else:
            s_list[i], s_list[j] = s_list[j], s_list[i]
            i, j = i + 1, j - 1
    return ''.join(s_list); print(reverse_vowels("ab"))") == ab ]
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
def zero_count(lst):
    zero = lst.count(0)
    non_zero = len(lst) - zero
    if non_zero == 0:
        return 0
    else:
        return zero/non_zero

# Test 77
def is_Sum_Of_Powers_Of_Two(n):
    # यदि n 0 है, तो इसे 2 की शक्तियों के योग के रूप में नहीं दर्शाया जा सकता है
    if n == 0:
        return False

    # जब तक n 0 नहीं हो जाता, हम निम्नलिखित कार्य करते हैं:
    while n != 0:
        # यदि n का अंतिम बिट 0 नहीं है, तो इसे 2 की शक्तियों के योग के रूप में नहीं दर्शाया जा सकता है
        if n & 1 != 0:
            n -= 1
        # अन्यथा, हम n को 2 से विभाजित करते हैं
        n >>= 1

    # यदि हम यहां पहुंचते हैं, तो n को 2 की शक्तियों के योग के रूप में दर्शाया जा सकता है
    return True

if [ $(python -c "def is_Sum_Of_Powers_Of_Two(n):
    # यदि n 0 है, तो इसे 2 की शक्तियों के योग के रूप में नहीं दर्शाया जा सकता है
    if n == 0:
        return False

    # जब तक n 0 नहीं हो जाता, हम निम्नलिखित कार्य करते हैं:
    while n != 0:
        # यदि n का अंतिम बिट 0 नहीं है, तो इसे 2 की शक्तियों के योग के रूप में नहीं दर्शाया जा सकता है
        if n & 1 != 0:
            n -= 1
        # अन्यथा, हम n को 2 से विभाजित करते हैं
        n >>= 1

    # यदि हम यहां पहुंचते हैं, तो n को 2 की शक्तियों के योग के रूप में दर्शाया जा सकता है
    return True; print(is_Sum_Of_Powers_Of_Two(10))") == True ]
then
    echo "Test 77 passed"
else
    echo "Test 77 failed"
fi

if [ $(python -c "def is_Sum_Of_Powers_Of_Two(n):
    # यदि n 0 है, तो इसे 2 की शक्तियों के योग के रूप में नहीं दर्शाया जा सकता है
    if n == 0:
        return False

    # जब तक n 0 नहीं हो जाता, हम निम्नलिखित कार्य करते हैं:
    while n != 0:
        # यदि n का अंतिम बिट 0 नहीं है, तो इसे 2 की शक्तियों के योग के रूप में नहीं दर्शाया जा सकता है
        if n & 1 != 0:
            n -= 1
        # अन्यथा, हम n को 2 से विभाजित करते हैं
        n >>= 1

    # यदि हम यहां पहुंचते हैं, तो n को 2 की शक्तियों के योग के रूप में दर्शाया जा सकता है
    return True; print(is_Sum_Of_Powers_Of_Two(7))") == False ]
then
    echo "Test 77 passed"
else
    echo "Test 77 failed"
fi

if [ $(python -c "def is_Sum_Of_Powers_Of_Two(n):
    # यदि n 0 है, तो इसे 2 की शक्तियों के योग के रूप में नहीं दर्शाया जा सकता है
    if n == 0:
        return False

    # जब तक n 0 नहीं हो जाता, हम निम्नलिखित कार्य करते हैं:
    while n != 0:
        # यदि n का अंतिम बिट 0 नहीं है, तो इसे 2 की शक्तियों के योग के रूप में नहीं दर्शाया जा सकता है
        if n & 1 != 0:
            n -= 1
        # अन्यथा, हम n को 2 से विभाजित करते हैं
        n >>= 1

    # यदि हम यहां पहुंचते हैं, तो n को 2 की शक्तियों के योग के रूप में दर्शाया जा सकता है
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
def extract_singly(list_of_tuples):
    return [item for sublist in list_of_tuples for item in sublist]

if [ $(python -c "def extract_singly(list_of_tuples):
    return [item for sublist in list_of_tuples for item in sublist]; print(extract_singly(extract_singly([(3, 4, 5), (4, 5, 7), (1, 4)])))") == {1, 3, 4, 5, 7} ]
then
    echo "Test 79 passed"
else
    echo "Test 79 failed"
fi

if [ $(python -c "def extract_singly(list_of_tuples):
    return [item for sublist in list_of_tuples for item in sublist]; print(extract_singly(extract_singly([(1, 2, 3), (4, 2, 3), (7, 8)])))") == {1, 2, 3, 4, 7, 8} ]
then
    echo "Test 79 passed"
else
    echo "Test 79 failed"
fi

if [ $(python -c "def extract_singly(list_of_tuples):
    return [item for sublist in list_of_tuples for item in sublist]; print(extract_singly(extract_singly([(7, 8, 9), (10, 11, 12), (10, 11)])))") == {7, 8, 9, 10, 11, 12} ]
then
    echo "Test 79 passed"
else
    echo "Test 79 failed"
fi

# Test 80
def pancake_sort(arr):
    n = len(arr)
    while n > 1:
        max_index = arr.index(max(arr[0:n]))
        if max_index != n - 1:
            arr = arr[:max_index+1][::-1] + arr[max_index+1:] # अधिकतम तत्व को सूची के शीर्ष पर ले जाएं
            arr = arr[:n][::-1] + arr[n:] # सूची को उलट दें ताकि अधिकतम तत्व नीचे हो
        n -= 1
    return arr

if [ $(python -c "def pancake_sort(arr):
    n = len(arr)
    while n > 1:
        max_index = arr.index(max(arr[0:n]))
        if max_index != n - 1:
            arr = arr[:max_index+1][::-1] + arr[max_index+1:] # अधिकतम तत्व को सूची के शीर्ष पर ले जाएं
            arr = arr[:n][::-1] + arr[n:] # सूची को उलट दें ताकि अधिकतम तत्व नीचे हो
        n -= 1
    return arr; print(pancake_sort([15, 79, 25, 38, 69]))") == [15, 25, 38, 69, 79] ]
then
    echo "Test 80 passed"
else
    echo "Test 80 failed"
fi

if [ $(python -c "def pancake_sort(arr):
    n = len(arr)
    while n > 1:
        max_index = arr.index(max(arr[0:n]))
        if max_index != n - 1:
            arr = arr[:max_index+1][::-1] + arr[max_index+1:] # अधिकतम तत्व को सूची के शीर्ष पर ले जाएं
            arr = arr[:n][::-1] + arr[n:] # सूची को उलट दें ताकि अधिकतम तत्व नीचे हो
        n -= 1
    return arr; print(pancake_sort([98, 12, 54, 36, 85]))") == [12, 36, 54, 85, 98] ]
then
    echo "Test 80 passed"
else
    echo "Test 80 failed"
fi

if [ $(python -c "def pancake_sort(arr):
    n = len(arr)
    while n > 1:
        max_index = arr.index(max(arr[0:n]))
        if max_index != n - 1:
            arr = arr[:max_index+1][::-1] + arr[max_index+1:] # अधिकतम तत्व को सूची के शीर्ष पर ले जाएं
            arr = arr[:n][::-1] + arr[n:] # सूची को उलट दें ताकि अधिकतम तत्व नीचे हो
        n -= 1
    return arr; print(pancake_sort([41, 42, 32, 12, 23]))") == [12, 23, 32, 41, 42] ]
then
    echo "Test 80 passed"
else
    echo "Test 80 failed"
fi

# Test 81
def count_samepair(list1, list2, list3):
    count = 0
    for i in range(len(list1)):
        if list1[i] == list2[i] == list3[i]:
            count += 1
    return count

# Test 82
def find_lists(tup):
    count = 0
    for i in tup:
        if isinstance(i, list):
            count += 1
    return count

if [ $(python -c "def find_lists(tup):
    count = 0
    for i in tup:
        if isinstance(i, list):
            count += 1
    return count; print(find_lists(([1, 2, 3, 4], [5, 6, 7, 8])))") == 2 ]
then
    echo "Test 82 passed"
else
    echo "Test 82 failed"
fi

if [ $(python -c "def find_lists(tup):
    count = 0
    for i in tup:
        if isinstance(i, list):
            count += 1
    return count; print(find_lists(([1, 2], [3, 4], [5, 6])) )") == 3 ]
then
    echo "Test 82 passed"
else
    echo "Test 82 failed"
fi

if [ $(python -c "def find_lists(tup):
    count = 0
    for i in tup:
        if isinstance(i, list):
            count += 1
    return count; print(find_lists(([9, 8, 7, 6, 5, 4, 3, 2, 1])))") == 1 ]
then
    echo "Test 82 passed"
else
    echo "Test 82 failed"
fi

# Test 83
def max_Abs_Diff(nums):
    return max(nums) - min(nums)

if [ $(python -c "def max_Abs_Diff(nums):
    return max(nums) - min(nums); print(max_Abs_Diff((2,1,5,3)))") == 4 ]
then
    echo "Test 83 passed"
else
    echo "Test 83 failed"
fi

if [ $(python -c "def max_Abs_Diff(nums):
    return max(nums) - min(nums); print(max_Abs_Diff((9,3,2,5,1)))") == 8 ]
then
    echo "Test 83 passed"
else
    echo "Test 83 failed"
fi

if [ $(python -c "def max_Abs_Diff(nums):
    return max(nums) - min(nums); print(max_Abs_Diff((3,2,1)))") == 2 ]
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
def remove_elements(list1, list2):
    return [i for i in list1 if i not in list2]

if [ $(python -c "def remove_elements(list1, list2):
    return [i for i in list1 if i not in list2]; print(remove_elements([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [2, 4, 6, 8]))") == [1, 3, 5, 7, 9, 10] ]
then
    echo "Test 85 passed"
else
    echo "Test 85 failed"
fi

if [ $(python -c "def remove_elements(list1, list2):
    return [i for i in list1 if i not in list2]; print(remove_elements([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [1, 3, 5, 7]))") == [2, 4, 6, 8, 9, 10] ]
then
    echo "Test 85 passed"
else
    echo "Test 85 failed"
fi

if [ $(python -c "def remove_elements(list1, list2):
    return [i for i in list1 if i not in list2]; print(remove_elements([1, 2, 3, 4, 5, 6, 7, 8, 9, 10], [5, 7]))") == [1, 2, 3, 4, 6, 8, 9, 10] ]
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

def area_polygon(n, s):
    """
    एक नियमित बहुभुज का क्षेत्रफल गणना करने के लिए एक फ़ंक्शन।

    पैरामीटर:
    n (int): बहुभुज की भुजाओं की संख्या।
    s (float): बहुभुज की प्रत्येक भुजा की लंबाई।

    रिटर्न:
    float: बहुभुज का क्षेत्रफल।
    """
    area = (n * s ** 2) / (4 * math.tan(math.pi / n))
    return area

# Test 88
def are_equivalent(a, b):
    def sum_of_divisors(n):
        sum = 0
        for i in range(1, n + 1):
            if n % i == 0:
                sum += i
        return sum

    return sum_of_divisors(a) == sum_of_divisors(b)

if [ $(python -c "def are_equivalent(a, b):
    def sum_of_divisors(n):
        sum = 0
        for i in range(1, n + 1):
            if n % i == 0:
                sum += i
        return sum

    return sum_of_divisors(a) == sum_of_divisors(b); print(are_equivalent(36, 57))") == False ]
then
    echo "Test 88 passed"
else
    echo "Test 88 failed"
fi

if [ $(python -c "def are_equivalent(a, b):
    def sum_of_divisors(n):
        sum = 0
        for i in range(1, n + 1):
            if n % i == 0:
                sum += i
        return sum

    return sum_of_divisors(a) == sum_of_divisors(b); print(are_equivalent(2, 4))") == False ]
then
    echo "Test 88 passed"
else
    echo "Test 88 failed"
fi

if [ $(python -c "def are_equivalent(a, b):
    def sum_of_divisors(n):
        sum = 0
        for i in range(1, n + 1):
            if n % i == 0:
                sum += i
        return sum

    return sum_of_divisors(a) == sum_of_divisors(b); print(are_equivalent(23, 47))") == True ]
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
        if ord(s[i]) - 97 == i:
            count += 1
    return count

if [ $(python -c "def count_char_position(s):
    s = s.lower()
    count = 0
    for i in range(len(s)):
        if ord(s[i]) - 97 == i:
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
        if ord(s[i]) - 97 == i:
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
        if ord(s[i]) - 97 == i:
            count += 1
    return count; print(count_char_position("AbgdeF"))") == 5 ]
then
    echo "Test 89 passed"
else
    echo "Test 89 failed"
fi

# Test 90
def find_even_pair(lst):
    count = 0
    for i in range(len(lst)):
        for j in range(i+1, len(lst)):
            if (lst[i] + lst[j]) % 2 == 0:
                count += 1
    return count

if [ $(python -c "def find_even_pair(lst):
    count = 0
    for i in range(len(lst)):
        for j in range(i+1, len(lst)):
            if (lst[i] + lst[j]) % 2 == 0:
                count += 1
    return count; print(find_even_pair([5, 4, 7, 2, 1]))") == 4 ]
then
    echo "Test 90 passed"
else
    echo "Test 90 failed"
fi

if [ $(python -c "def find_even_pair(lst):
    count = 0
    for i in range(len(lst)):
        for j in range(i+1, len(lst)):
            if (lst[i] + lst[j]) % 2 == 0:
                count += 1
    return count; print(find_even_pair([7, 2, 8, 1, 0, 5, 11]))") == 9 ]
then
    echo "Test 90 passed"
else
    echo "Test 90 failed"
fi

if [ $(python -c "def find_even_pair(lst):
    count = 0
    for i in range(len(lst)):
        for j in range(i+1, len(lst)):
            if (lst[i] + lst[j]) % 2 == 0:
                count += 1
    return count; print(find_even_pair([1, 2, 3]))") == 1 ]
then
    echo "Test 90 passed"
else
    echo "Test 90 failed"
fi

# Test 91
def next_power_of_2(n):
    power = 0
    while (2 ** power) < n:
        power += 1
    return 2 ** power

if [ $(python -c "def next_power_of_2(n):
    power = 0
    while (2 ** power) < n:
        power += 1
    return 2 ** power; print(next_power_of_2(0))") == 1 ]
then
    echo "Test 91 passed"
else
    echo "Test 91 failed"
fi

if [ $(python -c "def next_power_of_2(n):
    power = 0
    while (2 ** power) < n:
        power += 1
    return 2 ** power; print(next_power_of_2(5))") == 8 ]
then
    echo "Test 91 passed"
else
    echo "Test 91 failed"
fi

if [ $(python -c "def next_power_of_2(n):
    power = 0
    while (2 ** power) < n:
        power += 1
    return 2 ** power; print(next_power_of_2(17))") == 32 ]
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
def is_majority(arr, n, element):
    count = arr.count(element)
    return count > n/2

if [ $(python -c "def is_majority(arr, n, element):
    count = arr.count(element)
    return count > n/2; print(is_majority([1, 2, 3, 3, 3, 3, 10], 7, 3))") == True ]
then
    echo "Test 97 passed"
else
    echo "Test 97 failed"
fi

if [ $(python -c "def is_majority(arr, n, element):
    count = arr.count(element)
    return count > n/2; print(is_majority([1, 1, 2, 4, 4, 4, 6, 6], 8, 4))") == False ]
then
    echo "Test 97 passed"
else
    echo "Test 97 failed"
fi

if [ $(python -c "def is_majority(arr, n, element):
    count = arr.count(element)
    return count > n/2; print(is_majority([1, 1, 1, 2, 2], 5, 1))") == True ]
then
    echo "Test 97 passed"
else
    echo "Test 97 failed"
fi

if [ $(python -c "def is_majority(arr, n, element):
    count = arr.count(element)
    return count > n/2; print(is_majority([1, 1, 2, 2], 5, 1))") == False ]
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
    # बिट्स की संख्या की जांच करें
    num_of_bits = r - l + 1

    # बिट्स की संख्या के आधार पर मास्क बनाएं
    mask = ((1 << num_of_bits) - 1) << (l - 1)

    # बिट्स की जांच करें
    return (n & mask) == mask

# टेस्ट केस

if [ $(python -c "def all_Bits_Set_In_The_Given_Range(n, l, r):
    # बिट्स की संख्या की जांच करें
    num_of_bits = r - l + 1

    # बिट्स की संख्या के आधार पर मास्क बनाएं
    mask = ((1 << num_of_bits) - 1) << (l - 1)

    # बिट्स की जांच करें
    return (n & mask) == mask

# टेस्ट केस; print(all_Bits_Set_In_The_Given_Range(4,1,2))") == True ]
then
    echo "Test 101 passed"
else
    echo "Test 101 failed"
fi

if [ $(python -c "def all_Bits_Set_In_The_Given_Range(n, l, r):
    # बिट्स की संख्या की जांच करें
    num_of_bits = r - l + 1

    # बिट्स की संख्या के आधार पर मास्क बनाएं
    mask = ((1 << num_of_bits) - 1) << (l - 1)

    # बिट्स की जांच करें
    return (n & mask) == mask

# टेस्ट केस; print(all_Bits_Set_In_The_Given_Range(17,2,4))") == True ]
then
    echo "Test 101 passed"
else
    echo "Test 101 failed"
fi

if [ $(python -c "def all_Bits_Set_In_The_Given_Range(n, l, r):
    # बिट्स की संख्या की जांच करें
    num_of_bits = r - l + 1

    # बिट्स की संख्या के आधार पर मास्क बनाएं
    mask = ((1 << num_of_bits) - 1) << (l - 1)

    # बिट्स की जांच करें
    return (n & mask) == mask

# टेस्ट केस; print(all_Bits_Set_In_The_Given_Range(39,4,6))") == False ]
then
    echo "Test 101 passed"
else
    echo "Test 101 failed"
fi

# Test 102
def re_arrange_array(arr, n):
    neg = [i for i in arr[:n] if i < 0]
    pos = [i for i in arr[:n] if i >= 0]
    return neg + pos

if [ $(python -c "def re_arrange_array(arr, n):
    neg = [i for i in arr[:n] if i < 0]
    pos = [i for i in arr[:n] if i >= 0]
    return neg + pos; print(re_arrange_array([-1, 2, -3, 4, 5, 6, -7, 8, 9], 9))") == [-1, -3, -7, 4, 5, 6, 2, 8, 9] ]
then
    echo "Test 102 passed"
else
    echo "Test 102 failed"
fi

if [ $(python -c "def re_arrange_array(arr, n):
    neg = [i for i in arr[:n] if i < 0]
    pos = [i for i in arr[:n] if i >= 0]
    return neg + pos; print(re_arrange_array([12, -14, -26, 13, 15], 5))") == [-14, -26, 12, 13, 15] ]
then
    echo "Test 102 passed"
else
    echo "Test 102 failed"
fi

if [ $(python -c "def re_arrange_array(arr, n):
    neg = [i for i in arr[:n] if i < 0]
    pos = [i for i in arr[:n] if i >= 0]
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
    # सम बिट के लिए मास्क बनाएं
    mask = 0xAAAAAAAA

    # नंबर और मास्क का बिटवाइज़ OR ऑपरेशन करें
    return n | mask

if [ $(python -c "def even_bit_set_number(n):
    # सम बिट के लिए मास्क बनाएं
    mask = 0xAAAAAAAA

    # नंबर और मास्क का बिटवाइज़ OR ऑपरेशन करें
    return n | mask; print(even_bit_set_number(10))") == 10 ]
then
    echo "Test 107 passed"
else
    echo "Test 107 failed"
fi

if [ $(python -c "def even_bit_set_number(n):
    # सम बिट के लिए मास्क बनाएं
    mask = 0xAAAAAAAA

    # नंबर और मास्क का बिटवाइज़ OR ऑपरेशन करें
    return n | mask; print(even_bit_set_number(20))") == 30 ]
then
    echo "Test 107 passed"
else
    echo "Test 107 failed"
fi

if [ $(python -c "def even_bit_set_number(n):
    # सम बिट के लिए मास्क बनाएं
    mask = 0xAAAAAAAA

    # नंबर और मास्क का बिटवाइज़ OR ऑपरेशन करें
    return n | mask; print(even_bit_set_number(30))") == 30 ]
then
    echo "Test 107 passed"
else
    echo "Test 107 failed"
fi

# Test 108
def check_occurences(lst):
    dict = {}
    for i in lst:
        i = tuple(sorted(i))
        if i in dict:
            dict[i] += 1
        else:
            dict[i] = 1
    return dict

if [ $(python -c "def check_occurences(lst):
    dict = {}
    for i in lst:
        i = tuple(sorted(i))
        if i in dict:
            dict[i] += 1
        else:
            dict[i] = 1
    return dict; print(check_occurences([(3, 1), (1, 3), (2, 5), (5, 2), (6, 3)] ))") == {(1, 3): 2, (2, 5): 2, (3, 6): 1} ]
then
    echo "Test 108 passed"
else
    echo "Test 108 failed"
fi

if [ $(python -c "def check_occurences(lst):
    dict = {}
    for i in lst:
        i = tuple(sorted(i))
        if i in dict:
            dict[i] += 1
        else:
            dict[i] = 1
    return dict; print(check_occurences([(4, 2), (2, 4), (3, 6), (6, 3), (7, 4)] ))") == {(2, 4): 2, (3, 6): 2, (4, 7): 1} ]
then
    echo "Test 108 passed"
else
    echo "Test 108 failed"
fi

if [ $(python -c "def check_occurences(lst):
    dict = {}
    for i in lst:
        i = tuple(sorted(i))
        if i in dict:
            dict[i] += 1
        else:
            dict[i] = 1
    return dict; print(check_occurences([(13, 2), (11, 23), (12, 25), (25, 12), (16, 23)] ))") == {(2, 13): 1, (11, 23): 1, (12, 25): 2, (16, 23): 1} ]
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
    dp = [[0 for _ in range(m+1)] for _ in range(n+1)]
    for i in range(m+1):
        dp[1][i] = i
    for i in range(2, n+1):
        for j in range(m+1):
            dp[i][j] = dp[i][j-1]
            if j >= 2*i:
                dp[i][j] += dp[i-1][j//2]
    return dp[n][m]

if [ $(python -c "def get_total_number_of_sequences(m, n):
    dp = [[0 for _ in range(m+1)] for _ in range(n+1)]
    for i in range(m+1):
        dp[1][i] = i
    for i in range(2, n+1):
        for j in range(m+1):
            dp[i][j] = dp[i][j-1]
            if j >= 2*i:
                dp[i][j] += dp[i-1][j//2]
    return dp[n][m]; print(get_total_number_of_sequences(10, 4))") == 4 ]
then
    echo "Test 110 passed"
else
    echo "Test 110 failed"
fi

if [ $(python -c "def get_total_number_of_sequences(m, n):
    dp = [[0 for _ in range(m+1)] for _ in range(n+1)]
    for i in range(m+1):
        dp[1][i] = i
    for i in range(2, n+1):
        for j in range(m+1):
            dp[i][j] = dp[i][j-1]
            if j >= 2*i:
                dp[i][j] += dp[i-1][j//2]
    return dp[n][m]; print(get_total_number_of_sequences(5, 2))") == 6 ]
then
    echo "Test 110 passed"
else
    echo "Test 110 failed"
fi

if [ $(python -c "def get_total_number_of_sequences(m, n):
    dp = [[0 for _ in range(m+1)] for _ in range(n+1)]
    for i in range(m+1):
        dp[1][i] = i
    for i in range(2, n+1):
        for j in range(m+1):
            dp[i][j] = dp[i][j-1]
            if j >= 2*i:
                dp[i][j] += dp[i-1][j//2]
    return dp[n][m]; print(get_total_number_of_sequences(16, 3))") == 84 ]
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
    return len(s.replace(" ", ""))  # रिक्त स्थानों को हटाकर वर्णों की संख्या गिनता है

# Test 113
import math

def next_Perfect_Square(n):
    # अगला पूर्ण वर्ग ज्ञात करने के लिए, हमें पहले दी गई संख्या का वर्गमूल लेना होगा।
    root = math.sqrt(n)
    
    # अगर यह एक पूर्ण वर्ग है, तो हमें अगले पूर्ण वर्ग को ज्ञात करने के लिए वर्गमूल में 1 जोड़ना होगा।
    if root.is_integer():
        return (root + 1) ** 2
    # यदि यह एक पूर्ण वर्ग नहीं है, तो हमें वर्गमूल को अगले पूर्णांक पर वृद्धि करने और फिर वर्ग करने की आवश्यकता होगी।
    else:
        return (math.ceil(root)) ** 2

if [ $(python -c "import math

def next_Perfect_Square(n):
    # अगला पूर्ण वर्ग ज्ञात करने के लिए, हमें पहले दी गई संख्या का वर्गमूल लेना होगा।
    root = math.sqrt(n)
    
    # अगर यह एक पूर्ण वर्ग है, तो हमें अगले पूर्ण वर्ग को ज्ञात करने के लिए वर्गमूल में 1 जोड़ना होगा।
    if root.is_integer():
        return (root + 1) ** 2
    # यदि यह एक पूर्ण वर्ग नहीं है, तो हमें वर्गमूल को अगले पूर्णांक पर वृद्धि करने और फिर वर्ग करने की आवश्यकता होगी।
    else:
        return (math.ceil(root)) ** 2; print(next_Perfect_Square(35))") == 36 ]
then
    echo "Test 113 passed"
else
    echo "Test 113 failed"
fi

if [ $(python -c "import math

def next_Perfect_Square(n):
    # अगला पूर्ण वर्ग ज्ञात करने के लिए, हमें पहले दी गई संख्या का वर्गमूल लेना होगा।
    root = math.sqrt(n)
    
    # अगर यह एक पूर्ण वर्ग है, तो हमें अगले पूर्ण वर्ग को ज्ञात करने के लिए वर्गमूल में 1 जोड़ना होगा।
    if root.is_integer():
        return (root + 1) ** 2
    # यदि यह एक पूर्ण वर्ग नहीं है, तो हमें वर्गमूल को अगले पूर्णांक पर वृद्धि करने और फिर वर्ग करने की आवश्यकता होगी।
    else:
        return (math.ceil(root)) ** 2; print(next_Perfect_Square(6))") == 9 ]
then
    echo "Test 113 passed"
else
    echo "Test 113 failed"
fi

if [ $(python -c "import math

def next_Perfect_Square(n):
    # अगला पूर्ण वर्ग ज्ञात करने के लिए, हमें पहले दी गई संख्या का वर्गमूल लेना होगा।
    root = math.sqrt(n)
    
    # अगर यह एक पूर्ण वर्ग है, तो हमें अगले पूर्ण वर्ग को ज्ञात करने के लिए वर्गमूल में 1 जोड़ना होगा।
    if root.is_integer():
        return (root + 1) ** 2
    # यदि यह एक पूर्ण वर्ग नहीं है, तो हमें वर्गमूल को अगले पूर्णांक पर वृद्धि करने और फिर वर्ग करने की आवश्यकता होगी।
    else:
        return (math.ceil(root)) ** 2; print(next_Perfect_Square(9))") == 16 ]
then
    echo "Test 113 passed"
else
    echo "Test 113 failed"
fi

# Test 114
def max_sum(arr):
    n = len(arr)
    inc = [0 for i in range(n)]
    dec = [0 for i in range(n)]
    max_sum = -1

    inc[0] = arr[0]
    dec[n-1] = arr[n-1]

    for i in range(1, n):
        inc[i] = max(inc[i-1], arr[i])

    for i in range(n-2, -1, -1):
        dec[i] = max(dec[i+1], arr[i])

    for i in range(n):
        max_sum = max(max_sum, inc[i] + dec[i] - arr[i])

    return max_sum

if [ $(python -c "def max_sum(arr):
    n = len(arr)
    inc = [0 for i in range(n)]
    dec = [0 for i in range(n)]
    max_sum = -1

    inc[0] = arr[0]
    dec[n-1] = arr[n-1]

    for i in range(1, n):
        inc[i] = max(inc[i-1], arr[i])

    for i in range(n-2, -1, -1):
        dec[i] = max(dec[i+1], arr[i])

    for i in range(n):
        max_sum = max(max_sum, inc[i] + dec[i] - arr[i])

    return max_sum; print(max_sum([1, 15, 51, 45, 33, 100, 12, 18, 9]))") == 194 ]
then
    echo "Test 114 passed"
else
    echo "Test 114 failed"
fi

if [ $(python -c "def max_sum(arr):
    n = len(arr)
    inc = [0 for i in range(n)]
    dec = [0 for i in range(n)]
    max_sum = -1

    inc[0] = arr[0]
    dec[n-1] = arr[n-1]

    for i in range(1, n):
        inc[i] = max(inc[i-1], arr[i])

    for i in range(n-2, -1, -1):
        dec[i] = max(dec[i+1], arr[i])

    for i in range(n):
        max_sum = max(max_sum, inc[i] + dec[i] - arr[i])

    return max_sum; print(max_sum([80, 60, 30, 40, 20, 10]))") == 210 ]
then
    echo "Test 114 passed"
else
    echo "Test 114 failed"
fi

if [ $(python -c "def max_sum(arr):
    n = len(arr)
    inc = [0 for i in range(n)]
    dec = [0 for i in range(n)]
    max_sum = -1

    inc[0] = arr[0]
    dec[n-1] = arr[n-1]

    for i in range(1, n):
        inc[i] = max(inc[i-1], arr[i])

    for i in range(n-2, -1, -1):
        dec[i] = max(dec[i+1], arr[i])

    for i in range(n):
        max_sum = max(max_sum, inc[i] + dec[i] - arr[i])

    return max_sum; print(max_sum([2, 3 ,14, 16, 21, 23, 29, 30]))") == 138 ]
then
    echo "Test 114 passed"
else
    echo "Test 114 failed"
fi

# Test 115
def babylonian_squareroot(n):
    x = n
    y = (x + 1) / 2

    while abs(y - x) > 0.001:
        x = y
        y = (x + n / x) / 2

    return y

# Test 116
def lps(s):
    # इनिशियलाइज़ करें
    max_length = 0
    start = 0
    for i in range(len(s)):
        # एकल वर्ण के लिए पैलिन्ड्रोम खोजें
        left = i
        right = i
        while left >= 0 and right < len(s) and s[left] == s[right]:
            if right - left + 1 > max_length:
                max_length = right - left + 1
                start = left
            left -= 1
            right += 1
        # दोहरे वर्ण के लिए पैलिन्ड्रोम खोजें
        left = i
        right = i + 1
        while left >= 0 and right < len(s) and s[left] == s[right]:
            if right - left + 1 > max_length:
                max_length = right - left + 1
                start = left
            left -= 1
            right += 1
    return max_length

if [ $(python -c "def lps(s):
    # इनिशियलाइज़ करें
    max_length = 0
    start = 0
    for i in range(len(s)):
        # एकल वर्ण के लिए पैलिन्ड्रोम खोजें
        left = i
        right = i
        while left >= 0 and right < len(s) and s[left] == s[right]:
            if right - left + 1 > max_length:
                max_length = right - left + 1
                start = left
            left -= 1
            right += 1
        # दोहरे वर्ण के लिए पैलिन्ड्रोम खोजें
        left = i
        right = i + 1
        while left >= 0 and right < len(s) and s[left] == s[right]:
            if right - left + 1 > max_length:
                max_length = right - left + 1
                start = left
            left -= 1
            right += 1
    return max_length; print(lps("TENS FOR TENS"))") == 5 ]
then
    echo "Test 116 passed"
else
    echo "Test 116 failed"
fi

if [ $(python -c "def lps(s):
    # इनिशियलाइज़ करें
    max_length = 0
    start = 0
    for i in range(len(s)):
        # एकल वर्ण के लिए पैलिन्ड्रोम खोजें
        left = i
        right = i
        while left >= 0 and right < len(s) and s[left] == s[right]:
            if right - left + 1 > max_length:
                max_length = right - left + 1
                start = left
            left -= 1
            right += 1
        # दोहरे वर्ण के लिए पैलिन्ड्रोम खोजें
        left = i
        right = i + 1
        while left >= 0 and right < len(s) and s[left] == s[right]:
            if right - left + 1 > max_length:
                max_length = right - left + 1
                start = left
            left -= 1
            right += 1
    return max_length; print(lps("CARDIO FOR CARDS"))") == 7 ]
then
    echo "Test 116 passed"
else
    echo "Test 116 failed"
fi

if [ $(python -c "def lps(s):
    # इनिशियलाइज़ करें
    max_length = 0
    start = 0
    for i in range(len(s)):
        # एकल वर्ण के लिए पैलिन्ड्रोम खोजें
        left = i
        right = i
        while left >= 0 and right < len(s) and s[left] == s[right]:
            if right - left + 1 > max_length:
                max_length = right - left + 1
                start = left
            left -= 1
            right += 1
        # दोहरे वर्ण के लिए पैलिन्ड्रोम खोजें
        left = i
        right = i + 1
        while left >= 0 and right < len(s) and s[left] == s[right]:
            if right - left + 1 > max_length:
                max_length = right - left + 1
                start = left
            left -= 1
            right += 1
    return max_length; print(lps("PART OF THE JOURNEY IS PART"))") == 9 ]
then
    echo "Test 116 passed"
else
    echo "Test 116 failed"
fi

# Test 117
def harmonic_sum(n):
    if n < 2:
        return 1
    else:
        return 1/n + harmonic_sum(n-1)

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
def insert_element(lst, element):
    result = []
    for i in lst:
        result.append(element)
        result.append(i)
    return result

# Test 121
import cmath

def convert(complex_num):
    r, theta = cmath.polar(complex_num)
    return r, theta

if [ $(python -c "import cmath

def convert(complex_num):
    r, theta = cmath.polar(complex_num)
    return r, theta; print(convert(1))") == (1.0, 0.0) ]
then
    echo "Test 121 passed"
else
    echo "Test 121 failed"
fi

if [ $(python -c "import cmath

def convert(complex_num):
    r, theta = cmath.polar(complex_num)
    return r, theta; print(convert(4))") == (4.0, 0.0) ]
then
    echo "Test 121 passed"
else
    echo "Test 121 failed"
fi

if [ $(python -c "import cmath

def convert(complex_num):
    r, theta = cmath.polar(complex_num)
    return r, theta; print(convert(5))") == (5.0, 0.0) ]
then
    echo "Test 121 passed"
else
    echo "Test 121 failed"
fi

# Test 122
def count_integer(lst):
    count = 0
    for i in lst:
        if type(i) == int:
            count += 1
    return count

if [ $(python -c "def count_integer(lst):
    count = 0
    for i in lst:
        if type(i) == int:
            count += 1
    return count; print(count_integer([1,2,'abc',1.2]))") == 2 ]
then
    echo "Test 122 passed"
else
    echo "Test 122 failed"
fi

if [ $(python -c "def count_integer(lst):
    count = 0
    for i in lst:
        if type(i) == int:
            count += 1
    return count; print(count_integer([1,2,3]))") == 3 ]
then
    echo "Test 122 passed"
else
    echo "Test 122 failed"
fi

if [ $(python -c "def count_integer(lst):
    count = 0
    for i in lst:
        if type(i) == int:
            count += 1
    return count; print(count_integer([1,1.2,4,5.1]))") == 2 ]
then
    echo "Test 122 passed"
else
    echo "Test 122 failed"
fi

# Test 123
from itertools import combinations_with_replacement

def combinations_colors(lst, n):
    return list(combinations_with_replacement(lst, n))

# Test 124
def count_Primes_nums(n):
    if n < 2:
        return 0
    primes = [1] * n
    primes[0] = primes[1] = 0
    for i in range(2, int(n ** 0.5) + 1):
        if primes[i]:
            primes[i * i: n: i] = [0] * len(primes[i * i: n: i])
    return sum(primes)

if [ $(python -c "def count_Primes_nums(n):
    if n < 2:
        return 0
    primes = [1] * n
    primes[0] = primes[1] = 0
    for i in range(2, int(n ** 0.5) + 1):
        if primes[i]:
            primes[i * i: n: i] = [0] * len(primes[i * i: n: i])
    return sum(primes); print(count_Primes_nums(5))") == 2 ]
then
    echo "Test 124 passed"
else
    echo "Test 124 failed"
fi

if [ $(python -c "def count_Primes_nums(n):
    if n < 2:
        return 0
    primes = [1] * n
    primes[0] = primes[1] = 0
    for i in range(2, int(n ** 0.5) + 1):
        if primes[i]:
            primes[i * i: n: i] = [0] * len(primes[i * i: n: i])
    return sum(primes); print(count_Primes_nums(10))") == 4 ]
then
    echo "Test 124 passed"
else
    echo "Test 124 failed"
fi

if [ $(python -c "def count_Primes_nums(n):
    if n < 2:
        return 0
    primes = [1] * n
    primes[0] = primes[1] = 0
    for i in range(2, int(n ** 0.5) + 1):
        if primes[i]:
            primes[i * i: n: i] = [0] * len(primes[i * i: n: i])
    return sum(primes); print(count_Primes_nums(100))") == 25 ]
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

    count = 0
    current = 2
    while count < n:
        if is_prime(4*current**2 - 2*current + 41):
            count += 1
        current += 1
    return 4*(current-1)**2 - 2*(current-1) + 41

if [ $(python -c "def newman_prime(n):
    def is_prime(num):
        if num < 2:
            return False
        for i in range(2, int(num**0.5) + 1):
            if num % i == 0:
                return False
        return True

    count = 0
    current = 2
    while count < n:
        if is_prime(4*current**2 - 2*current + 41):
            count += 1
        current += 1
    return 4*(current-1)**2 - 2*(current-1) + 41; print(newman_prime(3))") == 7 ]
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

    count = 0
    current = 2
    while count < n:
        if is_prime(4*current**2 - 2*current + 41):
            count += 1
        current += 1
    return 4*(current-1)**2 - 2*(current-1) + 41; print(newman_prime(4))") == 17 ]
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

    count = 0
    current = 2
    while count < n:
        if is_prime(4*current**2 - 2*current + 41):
            count += 1
        current += 1
    return 4*(current-1)**2 - 2*(current-1) + 41; print(newman_prime(5))") == 41 ]
then
    echo "Test 127 passed"
else
    echo "Test 127 failed"
fi

# Test 128
def division_elements(tup1, tup2):
    return tuple(a//b for a, b in zip(tup1, tup2))

if [ $(python -c "def division_elements(tup1, tup2):
    return tuple(a//b for a, b in zip(tup1, tup2)); print(division_elements((10, 4, 6, 9),(5, 2, 3, 3)))") == (2, 2, 2, 3) ]
then
    echo "Test 128 passed"
else
    echo "Test 128 failed"
fi

if [ $(python -c "def division_elements(tup1, tup2):
    return tuple(a//b for a, b in zip(tup1, tup2)); print(division_elements((12, 6, 8, 16),(6, 3, 4, 4)))") == (2, 2, 2, 4) ]
then
    echo "Test 128 passed"
else
    echo "Test 128 failed"
fi

if [ $(python -c "def division_elements(tup1, tup2):
    return tuple(a//b for a, b in zip(tup1, tup2)); print(division_elements((20, 14, 36, 18),(5, 7, 6, 9)))") == (4, 2, 6, 2) ]
then
    echo "Test 128 passed"
else
    echo "Test 128 failed"
fi

# Test 129
def split_two_parts(lst, L):
    return lst[:L], lst[L:]

# Test 130
def dog_age(human_years):
    if human_years < 2:
        return human_years * 10.5
    else:
        return 21 + (human_years - 2) * 4

# Test 131
def list_split(lst, n):
    return [lst[i::n] for i in range(n)]

# Test 132
def lateralsurface_cube(side):
    return 4 * side ** 2

# Test 133
def square_Sum(n):
    sum = 0
    odd = 1
    for i in range(n):
        sum += odd ** 2
        odd += 2
    return sum

if [ $(python -c "def square_Sum(n):
    sum = 0
    odd = 1
    for i in range(n):
        sum += odd ** 2
        odd += 2
    return sum; print(square_Sum(2))") == 10 ]
then
    echo "Test 133 passed"
else
    echo "Test 133 failed"
fi

if [ $(python -c "def square_Sum(n):
    sum = 0
    odd = 1
    for i in range(n):
        sum += odd ** 2
        odd += 2
    return sum; print(square_Sum(3))") == 35 ]
then
    echo "Test 133 passed"
else
    echo "Test 133 failed"
fi

if [ $(python -c "def square_Sum(n):
    sum = 0
    odd = 1
    for i in range(n):
        sum += odd ** 2
        odd += 2
    return sum; print(square_Sum(4))") == 84 ]
then
    echo "Test 133 passed"
else
    echo "Test 133 failed"
fi

# Test 134
def find_star_num(n):
    return 6 * n * (n - 1) + 1

if [ $(python -c "def find_star_num(n):
    return 6 * n * (n - 1) + 1; print(find_star_num(3))") == 37 ]
then
    echo "Test 134 passed"
else
    echo "Test 134 failed"
fi

if [ $(python -c "def find_star_num(n):
    return 6 * n * (n - 1) + 1; print(find_star_num(4))") == 73 ]
then
    echo "Test 134 passed"
else
    echo "Test 134 failed"
fi

if [ $(python -c "def find_star_num(n):
    return 6 * n * (n - 1) + 1; print(find_star_num(5))") == 121 ]
then
    echo "Test 134 passed"
else
    echo "Test 134 failed"
fi

# Test 135
def ascii_value(character):
    return ord(character)

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
    sum = 0
    for i in range(2, 2*n+1, 2):
        sum += i**5
    return sum

if [ $(python -c "def even_Power_Sum(n):
    sum = 0
    for i in range(2, 2*n+1, 2):
        sum += i**5
    return sum; print(even_Power_Sum(2))") == 1056 ]
then
    echo "Test 137 passed"
else
    echo "Test 137 failed"
fi

if [ $(python -c "def even_Power_Sum(n):
    sum = 0
    for i in range(2, 2*n+1, 2):
        sum += i**5
    return sum; print(even_Power_Sum(3))") == 8832 ]
then
    echo "Test 137 passed"
else
    echo "Test 137 failed"
fi

if [ $(python -c "def even_Power_Sum(n):
    sum = 0
    for i in range(2, 2*n+1, 2):
        sum += i**5
    return sum; print(even_Power_Sum(1))") == 32 ]
then
    echo "Test 137 passed"
else
    echo "Test 137 failed"
fi

# Test 138
def rear_extract(lst):
    return [tup[-1] for tup in lst]

if [ $(python -c "def rear_extract(lst):
    return [tup[-1] for tup in lst]; print(rear_extract([(1, 'Rash', 21), (2, 'Varsha', 20), (3, 'Kil', 19)]))") == [21, 20, 19] ]
then
    echo "Test 138 passed"
else
    echo "Test 138 failed"
fi

if [ $(python -c "def rear_extract(lst):
    return [tup[-1] for tup in lst]; print(rear_extract([(1, 'Sai', 36), (2, 'Ayesha', 25), (3, 'Salman', 45)]))") == [36, 25, 45] ]
then
    echo "Test 138 passed"
else
    echo "Test 138 failed"
fi

if [ $(python -c "def rear_extract(lst):
    return [tup[-1] for tup in lst]; print(rear_extract([(1, 'Sudeep', 14), (2, 'Vandana', 36), (3, 'Dawood', 56)]))") == [14, 36, 56] ]
then
    echo "Test 138 passed"
else
    echo "Test 138 failed"
fi

# Test 139
def substract_elements(t1, t2):
    return tuple(e1-e2 for e1, e2 in zip(t1, t2))

if [ $(python -c "def substract_elements(t1, t2):
    return tuple(e1-e2 for e1, e2 in zip(t1, t2)); print(substract_elements((10, 4, 5), (2, 5, 18)))") == (8, -1, -13) ]
then
    echo "Test 139 passed"
else
    echo "Test 139 failed"
fi

if [ $(python -c "def substract_elements(t1, t2):
    return tuple(e1-e2 for e1, e2 in zip(t1, t2)); print(substract_elements((11, 2, 3), (24, 45 ,16)))") == (-13, -43, -13) ]
then
    echo "Test 139 passed"
else
    echo "Test 139 failed"
fi

if [ $(python -c "def substract_elements(t1, t2):
    return tuple(e1-e2 for e1, e2 in zip(t1, t2)); print(substract_elements((7, 18, 9), (10, 11, 12)))") == (-3, 7, -3) ]
then
    echo "Test 139 passed"
else
    echo "Test 139 failed"
fi

# Test 140
from math import comb

def even_binomial_Coeff_Sum(n):
    sum = 0
    for i in range(0, n+1, 2):
        sum += comb(n, i)
    return sum

if [ $(python -c "from math import comb

def even_binomial_Coeff_Sum(n):
    sum = 0
    for i in range(0, n+1, 2):
        sum += comb(n, i)
    return sum; print(even_binomial_Coeff_Sum(4))") == 8 ]
then
    echo "Test 140 passed"
else
    echo "Test 140 failed"
fi

if [ $(python -c "from math import comb

def even_binomial_Coeff_Sum(n):
    sum = 0
    for i in range(0, n+1, 2):
        sum += comb(n, i)
    return sum; print(even_binomial_Coeff_Sum(6))") == 32 ]
then
    echo "Test 140 passed"
else
    echo "Test 140 failed"
fi

if [ $(python -c "from math import comb

def even_binomial_Coeff_Sum(n):
    sum = 0
    for i in range(0, n+1, 2):
        sum += comb(n, i)
    return sum; print(even_binomial_Coeff_Sum(2))") == 2 ]
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
    for i, element in enumerate(tup):
        if isinstance(element, tuple):
            return i
    return len(tup)

if [ $(python -c "def count_first_elements(tup):
    for i, element in enumerate(tup):
        if isinstance(element, tuple):
            return i
    return len(tup); print(count_first_elements((1, 5, 7, (4, 6), 10) ))") == 3 ]
then
    echo "Test 143 passed"
else
    echo "Test 143 failed"
fi

if [ $(python -c "def count_first_elements(tup):
    for i, element in enumerate(tup):
        if isinstance(element, tuple):
            return i
    return len(tup); print(count_first_elements((2, 9, (5, 7), 11) ))") == 2 ]
then
    echo "Test 143 passed"
else
    echo "Test 143 failed"
fi

if [ $(python -c "def count_first_elements(tup):
    for i, element in enumerate(tup):
        if isinstance(element, tuple):
            return i
    return len(tup); print(count_first_elements((11, 15, 5, 8, (2, 3), 8) ))") == 4 ]
then
    echo "Test 143 passed"
else
    echo "Test 143 failed"
fi

# Test 144
def is_num_decagonal(n):
    return n * (4 * n - 3)

if [ $(python -c "def is_num_decagonal(n):
    return n * (4 * n - 3); print(is_num_decagonal(3))") == 27 ]
then
    echo "Test 144 passed"
else
    echo "Test 144 failed"
fi

if [ $(python -c "def is_num_decagonal(n):
    return n * (4 * n - 3); print(is_num_decagonal(7))") == 175 ]
then
    echo "Test 144 passed"
else
    echo "Test 144 failed"
fi

if [ $(python -c "def is_num_decagonal(n):
    return n * (4 * n - 3); print(is_num_decagonal(10))") == 370 ]
then
    echo "Test 144 passed"
else
    echo "Test 144 failed"
fi

# Test 145
def sequential_search(arr, element):
    for i in range(len(arr)):
        if arr[i] == element:
            return (True, i)
    return (False, -1)

if [ $(python -c "def sequential_search(arr, element):
    for i in range(len(arr)):
        if arr[i] == element:
            return (True, i)
    return (False, -1); print(sequential_search([11,23,58,31,56,77,43,12,65,19],31))") == (True, 3) ]
then
    echo "Test 145 passed"
else
    echo "Test 145 failed"
fi

if [ $(python -c "def sequential_search(arr, element):
    for i in range(len(arr)):
        if arr[i] == element:
            return (True, i)
    return (False, -1); print(sequential_search([12, 32, 45, 62, 35, 47, 44, 61],61))") == (True, 7) ]
then
    echo "Test 145 passed"
else
    echo "Test 145 failed"
fi

if [ $(python -c "def sequential_search(arr, element):
    for i in range(len(arr)):
        if arr[i] == element:
            return (True, i)
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
    # पूर्णांक को स्ट्रिंग में परिवर्तित करें
    str_n = str(n)
    
    # प्रत्येक अंक की आवृत्ति की जांच करें
    for digit in str_n:
        if str_n.count(digit) > int(digit):
            return False
    return True

if [ $(python -c "def validate(n):
    # पूर्णांक को स्ट्रिंग में परिवर्तित करें
    str_n = str(n)
    
    # प्रत्येक अंक की आवृत्ति की जांच करें
    for digit in str_n:
        if str_n.count(digit) > int(digit):
            return False
    return True; print(validate(1234))") == True ]
then
    echo "Test 148 passed"
else
    echo "Test 148 failed"
fi

if [ $(python -c "def validate(n):
    # पूर्णांक को स्ट्रिंग में परिवर्तित करें
    str_n = str(n)
    
    # प्रत्येक अंक की आवृत्ति की जांच करें
    for digit in str_n:
        if str_n.count(digit) > int(digit):
            return False
    return True; print(validate(51241))") == False ]
then
    echo "Test 148 passed"
else
    echo "Test 148 failed"
fi

if [ $(python -c "def validate(n):
    # पूर्णांक को स्ट्रिंग में परिवर्तित करें
    str_n = str(n)
    
    # प्रत्येक अंक की आवृत्ति की जांच करें
    for digit in str_n:
        if str_n.count(digit) > int(digit):
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
    patterns = 'ab{2,3}?'
    if re.search(patterns,  text):
        return True
    else:
        return False

# Test 151
def max_sub_array_sum_repeated(arr, k, n):
    arr = arr * k
    max_sum = float('-inf')
    for i in range(n, len(arr) + 1):
        for j in range(len(arr) - i + 1):
            sub_array_sum = sum(arr[j:j+i])
            max_sum = max(max_sum, sub_array_sum)
    return max_sum

if [ $(python -c "def max_sub_array_sum_repeated(arr, k, n):
    arr = arr * k
    max_sum = float('-inf')
    for i in range(n, len(arr) + 1):
        for j in range(len(arr) - i + 1):
            sub_array_sum = sum(arr[j:j+i])
            max_sum = max(max_sum, sub_array_sum)
    return max_sum; print(max_sub_array_sum_repeated([10, 20, -30, -1], 4, 3))") == 30 ]
then
    echo "Test 151 passed"
else
    echo "Test 151 failed"
fi

if [ $(python -c "def max_sub_array_sum_repeated(arr, k, n):
    arr = arr * k
    max_sum = float('-inf')
    for i in range(n, len(arr) + 1):
        for j in range(len(arr) - i + 1):
            sub_array_sum = sum(arr[j:j+i])
            max_sum = max(max_sum, sub_array_sum)
    return max_sum; print(max_sub_array_sum_repeated([-1, 10, 20], 3, 2))") == 59 ]
then
    echo "Test 151 passed"
else
    echo "Test 151 failed"
fi

if [ $(python -c "def max_sub_array_sum_repeated(arr, k, n):
    arr = arr * k
    max_sum = float('-inf')
    for i in range(n, len(arr) + 1):
        for j in range(len(arr) - i + 1):
            sub_array_sum = sum(arr[j:j+i])
            max_sum = max(max_sum, sub_array_sum)
    return max_sum; print(max_sub_array_sum_repeated([-1, -2, -3], 3, 3))") == -1 ]
then
    echo "Test 151 passed"
else
    echo "Test 151 failed"
fi

# Test 152
def square_Sum(n):
    sum = 0
    for i in range(1, 2*n+1, 2):
        sum += i**2
    return sum

if [ $(python -c "def square_Sum(n):
    sum = 0
    for i in range(1, 2*n+1, 2):
        sum += i**2
    return sum; print(square_Sum(2))") == 20 ]
then
    echo "Test 152 passed"
else
    echo "Test 152 failed"
fi

if [ $(python -c "def square_Sum(n):
    sum = 0
    for i in range(1, 2*n+1, 2):
        sum += i**2
    return sum; print(square_Sum(3))") == 56 ]
then
    echo "Test 152 passed"
else
    echo "Test 152 failed"
fi

if [ $(python -c "def square_Sum(n):
    sum = 0
    for i in range(1, 2*n+1, 2):
        sum += i**2
    return sum; print(square_Sum(4))") == 120 ]
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
    same, diff = k, k*(k-1)
    total = same + diff

    for _ in range(3, n+1):
        same = diff
        diff = total * (k-1)
        total = same + diff

    return total

if [ $(python -c "def count_no_of_ways(n, k):
    same, diff = k, k*(k-1)
    total = same + diff

    for _ in range(3, n+1):
        same = diff
        diff = total * (k-1)
        total = same + diff

    return total; print(count_no_of_ways(2, 4))") == 16 ]
then
    echo "Test 154 passed"
else
    echo "Test 154 failed"
fi

if [ $(python -c "def count_no_of_ways(n, k):
    same, diff = k, k*(k-1)
    total = same + diff

    for _ in range(3, n+1):
        same = diff
        diff = total * (k-1)
        total = same + diff

    return total; print(count_no_of_ways(3, 2))") == 6 ]
then
    echo "Test 154 passed"
else
    echo "Test 154 failed"
fi

if [ $(python -c "def count_no_of_ways(n, k):
    same, diff = k, k*(k-1)
    total = same + diff

    for _ in range(3, n+1):
        same = diff
        diff = total * (k-1)
        total = same + diff

    return total; print(count_no_of_ways(4, 4))") == 228 ]
then
    echo "Test 154 passed"
else
    echo "Test 154 failed"
fi

# Test 155
def find(a, b):
    return round(a / b)

if [ $(python -c "def find(a, b):
    return round(a / b); print(find(10,3))") == 3 ]
then
    echo "Test 155 passed"
else
    echo "Test 155 failed"
fi

if [ $(python -c "def find(a, b):
    return round(a / b); print(find(4,2))") == 2 ]
then
    echo "Test 155 passed"
else
    echo "Test 155 failed"
fi

if [ $(python -c "def find(a, b):
    return round(a / b); print(find(20,5))") == 4 ]
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
    num_lst = [i for i in lst if isinstance(i, (int, float))]
    return max(num_lst) if num_lst else None

# Test 158
def sum_div(n):
    sum = 0
    for i in range(1, n):
        if n % i == 0:
            sum += i
    return sum

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
    for element in nested_list:
        if type(element) is list:
            flat_list.extend(flatten_list(element))
        else:
            flat_list.append(element)
    return flat_list

# Test 161
def max_aggregate(lst):
    d = {}
    for i in lst:
        if i[0] in d:
            d[i[0]] += i[1]
        else:
            d[i[0]] = i[1]
    max_val = max(d.values())
    for key in d:
        if d[key] == max_val:
            return (key, max_val)

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
    # rotations को उलटा करें ताकि हम पिछले घुमाव से शुरू कर सकें
    rotations = rotations[::-1]
    
    # घुमावों की संख्या के अनुसार चलें
    for i in range(rotation_number):
        # घुमाव की दिशा और मात्रा प्राप्त करें
        direction, amount = rotations[i]
        
        # यदि दिशा 0 है, तो हमें बाएं घुमाना है
        if direction == 0:
            # घुमाव की मात्रा को सूचकांक से घटाएं
            index = (index - amount) % len(lst)
        # अन्यथा, हमें दाएं घुमाना है
        else:
            # घुमाव की मात्रा को सूचकांक में जोड़ें
            index = (index + amount) % len(lst)
    
    # अंतिम सूचकांक पर तत्व लौटाएं
    return lst[index]

if [ $(python -c "def find_Element(lst, rotations, index, rotation_number):
    # rotations को उलटा करें ताकि हम पिछले घुमाव से शुरू कर सकें
    rotations = rotations[::-1]
    
    # घुमावों की संख्या के अनुसार चलें
    for i in range(rotation_number):
        # घुमाव की दिशा और मात्रा प्राप्त करें
        direction, amount = rotations[i]
        
        # यदि दिशा 0 है, तो हमें बाएं घुमाना है
        if direction == 0:
            # घुमाव की मात्रा को सूचकांक से घटाएं
            index = (index - amount) % len(lst)
        # अन्यथा, हमें दाएं घुमाना है
        else:
            # घुमाव की मात्रा को सूचकांक में जोड़ें
            index = (index + amount) % len(lst)
    
    # अंतिम सूचकांक पर तत्व लौटाएं
    return lst[index]; print(find_Element([1,2,3,4,5],[[0,2],[0,3]],2,1))") == 3 ]
then
    echo "Test 164 passed"
else
    echo "Test 164 failed"
fi

if [ $(python -c "def find_Element(lst, rotations, index, rotation_number):
    # rotations को उलटा करें ताकि हम पिछले घुमाव से शुरू कर सकें
    rotations = rotations[::-1]
    
    # घुमावों की संख्या के अनुसार चलें
    for i in range(rotation_number):
        # घुमाव की दिशा और मात्रा प्राप्त करें
        direction, amount = rotations[i]
        
        # यदि दिशा 0 है, तो हमें बाएं घुमाना है
        if direction == 0:
            # घुमाव की मात्रा को सूचकांक से घटाएं
            index = (index - amount) % len(lst)
        # अन्यथा, हमें दाएं घुमाना है
        else:
            # घुमाव की मात्रा को सूचकांक में जोड़ें
            index = (index + amount) % len(lst)
    
    # अंतिम सूचकांक पर तत्व लौटाएं
    return lst[index]; print(find_Element([1,2,3,4],[[0,1],[0,2]],1,2))") == 3 ]
then
    echo "Test 164 passed"
else
    echo "Test 164 failed"
fi

if [ $(python -c "def find_Element(lst, rotations, index, rotation_number):
    # rotations को उलटा करें ताकि हम पिछले घुमाव से शुरू कर सकें
    rotations = rotations[::-1]
    
    # घुमावों की संख्या के अनुसार चलें
    for i in range(rotation_number):
        # घुमाव की दिशा और मात्रा प्राप्त करें
        direction, amount = rotations[i]
        
        # यदि दिशा 0 है, तो हमें बाएं घुमाना है
        if direction == 0:
            # घुमाव की मात्रा को सूचकांक से घटाएं
            index = (index - amount) % len(lst)
        # अन्यथा, हमें दाएं घुमाना है
        else:
            # घुमाव की मात्रा को सूचकांक में जोड़ें
            index = (index + amount) % len(lst)
    
    # अंतिम सूचकांक पर तत्व लौटाएं
    return lst[index]; print(find_Element([1,2,3,4,5,6],[[0,1],[0,2]],1,1))") == 1 ]
then
    echo "Test 164 passed"
else
    echo "Test 164 failed"
fi

# Test 165
def start_withp(lst):
    p_words = []
    for words in lst:
        for word in words.split():
            if word[0].lower() == 'p':
                p_words.append(word)
    return tuple(p_words[:2])

# Test 166
def max_sum_increasing_subseq(arr, n, i, k):
    # अधिकतम योग के लिए एक सूची बनाएं
    max_sum = [0 for _ in range(n)]
    # पहले तत्व को अपने आप में शामिल करें
    max_sum[0] = arr[0]
    # अनुवर्ती के बाकी तत्वों के लिए
    for j in range(1, n):
        # अगर तत्व i से कम है और k से अधिक है
        if j <= i or j > k:
            # तो उसे अधिकतम योग में शामिल करें
            max_sum[j] = max(max_sum[j-1], arr[j] + max_sum[j-1])
        else:
            # अन्यथा, उसे छोड़ दें
            max_sum[j] = max_sum[j-1]
    # अधिकतम योग लौटाएं
    return max_sum[-1]

if [ $(python -c "def max_sum_increasing_subseq(arr, n, i, k):
    # अधिकतम योग के लिए एक सूची बनाएं
    max_sum = [0 for _ in range(n)]
    # पहले तत्व को अपने आप में शामिल करें
    max_sum[0] = arr[0]
    # अनुवर्ती के बाकी तत्वों के लिए
    for j in range(1, n):
        # अगर तत्व i से कम है और k से अधिक है
        if j <= i or j > k:
            # तो उसे अधिकतम योग में शामिल करें
            max_sum[j] = max(max_sum[j-1], arr[j] + max_sum[j-1])
        else:
            # अन्यथा, उसे छोड़ दें
            max_sum[j] = max_sum[j-1]
    # अधिकतम योग लौटाएं
    return max_sum[-1]; print(max_sum_increasing_subseq([1, 101, 2, 3, 100, 4, 5 ], 7, 4, 6))") == 11 ]
then
    echo "Test 166 passed"
else
    echo "Test 166 failed"
fi

if [ $(python -c "def max_sum_increasing_subseq(arr, n, i, k):
    # अधिकतम योग के लिए एक सूची बनाएं
    max_sum = [0 for _ in range(n)]
    # पहले तत्व को अपने आप में शामिल करें
    max_sum[0] = arr[0]
    # अनुवर्ती के बाकी तत्वों के लिए
    for j in range(1, n):
        # अगर तत्व i से कम है और k से अधिक है
        if j <= i or j > k:
            # तो उसे अधिकतम योग में शामिल करें
            max_sum[j] = max(max_sum[j-1], arr[j] + max_sum[j-1])
        else:
            # अन्यथा, उसे छोड़ दें
            max_sum[j] = max_sum[j-1]
    # अधिकतम योग लौटाएं
    return max_sum[-1]; print(max_sum_increasing_subseq([1, 101, 2, 3, 100, 4, 5 ], 7, 2, 5))") == 7 ]
then
    echo "Test 166 passed"
else
    echo "Test 166 failed"
fi

if [ $(python -c "def max_sum_increasing_subseq(arr, n, i, k):
    # अधिकतम योग के लिए एक सूची बनाएं
    max_sum = [0 for _ in range(n)]
    # पहले तत्व को अपने आप में शामिल करें
    max_sum[0] = arr[0]
    # अनुवर्ती के बाकी तत्वों के लिए
    for j in range(1, n):
        # अगर तत्व i से कम है और k से अधिक है
        if j <= i or j > k:
            # तो उसे अधिकतम योग में शामिल करें
            max_sum[j] = max(max_sum[j-1], arr[j] + max_sum[j-1])
        else:
            # अन्यथा, उसे छोड़ दें
            max_sum[j] = max_sum[j-1]
    # अधिकतम योग लौटाएं
    return max_sum[-1]; print(max_sum_increasing_subseq([11, 15, 19, 21, 26, 28, 31], 7, 2, 4))") == 71 ]
then
    echo "Test 166 passed"
else
    echo "Test 166 failed"
fi

# Test 167
def colon_tuplex(tuplex, index, value):
    # टुपल को सूची में परिवर्तित करें
    listx = list(tuplex)
    # विशेष इंडेक्स पर मान जोड़ें
    listx[index] = [value]
    # सूची को टुपल में वापस परिवर्तित करें
    return tuple(listx)

# Test 168
def large_product(lst1, lst2, n):
    # दोनों सूचियों को गिराने के लिए
    lst1.sort(reverse=True)
    lst2.sort(reverse=True)
    
    # उत्पादों की सूची बनाने के लिए
    products = [lst1[i]*lst2[i] for i in range(len(lst1))]
    
    # उत्पादों की सूची को गिराने के लिए
    products.sort(reverse=True)
    
    # शीर्ष n उत्पादों को वापस करने के लिए
    return products[:n]

# Test 169
def maximum(a, b):
    if a > b:
        return a
    else:
        return b

if [ $(python -c "def maximum(a, b):
    if a > b:
        return a
    else:
        return b; print(maximum(5,10))") == 10 ]
then
    echo "Test 169 passed"
else
    echo "Test 169 failed"
fi

if [ $(python -c "def maximum(a, b):
    if a > b:
        return a
    else:
        return b; print(maximum(-1,-2))") == -1 ]
then
    echo "Test 169 passed"
else
    echo "Test 169 failed"
fi

if [ $(python -c "def maximum(a, b):
    if a > b:
        return a
    else:
        return b; print(maximum(9,7))") == 9 ]
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
    # बाईं ओर से पहला अनसेट बिट खोजने के लिए बाईं ओर से बिट की जांच करें
    for i in range(n.bit_length(), -1, -1):
        # यदि बिट सेट नहीं है, तो उसे सेट करें और नई संख्या लौटाएं
        if not (n & (1 << i)):
            return n | (1 << i)
    # यदि सभी बिट सेट हैं, तो वापसी n
    return n

if [ $(python -c "def set_left_most_unset_bit(n):
    # बाईं ओर से पहला अनसेट बिट खोजने के लिए बाईं ओर से बिट की जांच करें
    for i in range(n.bit_length(), -1, -1):
        # यदि बिट सेट नहीं है, तो उसे सेट करें और नई संख्या लौटाएं
        if not (n & (1 << i)):
            return n | (1 << i)
    # यदि सभी बिट सेट हैं, तो वापसी n
    return n; print(set_left_most_unset_bit(10))") == 14 ]
then
    echo "Test 171 passed"
else
    echo "Test 171 failed"
fi

if [ $(python -c "def set_left_most_unset_bit(n):
    # बाईं ओर से पहला अनसेट बिट खोजने के लिए बाईं ओर से बिट की जांच करें
    for i in range(n.bit_length(), -1, -1):
        # यदि बिट सेट नहीं है, तो उसे सेट करें और नई संख्या लौटाएं
        if not (n & (1 << i)):
            return n | (1 << i)
    # यदि सभी बिट सेट हैं, तो वापसी n
    return n; print(set_left_most_unset_bit(12))") == 14 ]
then
    echo "Test 171 passed"
else
    echo "Test 171 failed"
fi

if [ $(python -c "def set_left_most_unset_bit(n):
    # बाईं ओर से पहला अनसेट बिट खोजने के लिए बाईं ओर से बिट की जांच करें
    for i in range(n.bit_length(), -1, -1):
        # यदि बिट सेट नहीं है, तो उसे सेट करें और नई संख्या लौटाएं
        if not (n & (1 << i)):
            return n | (1 << i)
    # यदि सभी बिट सेट हैं, तो वापसी n
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
    p = int(n ** 0.5)
    return 2 ** p

if [ $(python -c "def highest_Power_of_2(n):
    p = int(n ** 0.5)
    return 2 ** p; print(highest_Power_of_2(10))") == 8 ]
then
    echo "Test 173 passed"
else
    echo "Test 173 failed"
fi

if [ $(python -c "def highest_Power_of_2(n):
    p = int(n ** 0.5)
    return 2 ** p; print(highest_Power_of_2(19))") == 16 ]
then
    echo "Test 173 passed"
else
    echo "Test 173 failed"
fi

if [ $(python -c "def highest_Power_of_2(n):
    p = int(n ** 0.5)
    return 2 ** p; print(highest_Power_of_2(32))") == 32 ]
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
        a, b = 2, 1
        for _ in range(2, n + 1):
            a, b = b, a + b
        return b

if [ $(python -c "def find_lucas(n):
    if n == 0:
        return 2
    elif n == 1:
        return 1
    else:
        a, b = 2, 1
        for _ in range(2, n + 1):
            a, b = b, a + b
        return b; print(find_lucas(9))") == 76 ]
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
        a, b = 2, 1
        for _ in range(2, n + 1):
            a, b = b, a + b
        return b; print(find_lucas(4))") == 7 ]
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
        a, b = 2, 1
        for _ in range(2, n + 1):
            a, b = b, a + b
        return b; print(find_lucas(3))") == 4 ]
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
    # एक डिक्शनरी बनाएं जिसमें हम अपने संगणकों को संग्रहीत करेंगे
    dp = {0: 0, 1: 1}

    # एक फ़ंक्शन जो डिक्शनरी में संगणक की जांच करता है, यदि यह मौजूद है तो इसे लौटाता है
    # अन्यथा, इसे गणना करता है और डिक्शनरी में संग्रहीत करता है
    def helper(x):
        if x not in dp:
            dp[x] = max(x, helper(x//2) + helper(x//3) + helper(x//4) + helper(x//5))
        return dp[x]

    return helper(n)

if [ $(python -c "def get_max_sum(n):
    # एक डिक्शनरी बनाएं जिसमें हम अपने संगणकों को संग्रहीत करेंगे
    dp = {0: 0, 1: 1}

    # एक फ़ंक्शन जो डिक्शनरी में संगणक की जांच करता है, यदि यह मौजूद है तो इसे लौटाता है
    # अन्यथा, इसे गणना करता है और डिक्शनरी में संग्रहीत करता है
    def helper(x):
        if x not in dp:
            dp[x] = max(x, helper(x//2) + helper(x//3) + helper(x//4) + helper(x//5))
        return dp[x]

    return helper(n); print(get_max_sum(60))") == 106 ]
then
    echo "Test 177 passed"
else
    echo "Test 177 failed"
fi

if [ $(python -c "def get_max_sum(n):
    # एक डिक्शनरी बनाएं जिसमें हम अपने संगणकों को संग्रहीत करेंगे
    dp = {0: 0, 1: 1}

    # एक फ़ंक्शन जो डिक्शनरी में संगणक की जांच करता है, यदि यह मौजूद है तो इसे लौटाता है
    # अन्यथा, इसे गणना करता है और डिक्शनरी में संग्रहीत करता है
    def helper(x):
        if x not in dp:
            dp[x] = max(x, helper(x//2) + helper(x//3) + helper(x//4) + helper(x//5))
        return dp[x]

    return helper(n); print(get_max_sum(10))") == 12 ]
then
    echo "Test 177 passed"
else
    echo "Test 177 failed"
fi

if [ $(python -c "def get_max_sum(n):
    # एक डिक्शनरी बनाएं जिसमें हम अपने संगणकों को संग्रहीत करेंगे
    dp = {0: 0, 1: 1}

    # एक फ़ंक्शन जो डिक्शनरी में संगणक की जांच करता है, यदि यह मौजूद है तो इसे लौटाता है
    # अन्यथा, इसे गणना करता है और डिक्शनरी में संग्रहीत करता है
    def helper(x):
        if x not in dp:
            dp[x] = max(x, helper(x//2) + helper(x//3) + helper(x//4) + helper(x//5))
        return dp[x]

    return helper(n); print(get_max_sum(2))") == 2 ]
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
def check_distinct(tup):
    return len(tup) == len(set(tup))

if [ $(python -c "def check_distinct(tup):
    return len(tup) == len(set(tup)); print(check_distinct((1, 4, 5, 6, 1, 4)))") == False ]
then
    echo "Test 179 passed"
else
    echo "Test 179 failed"
fi

if [ $(python -c "def check_distinct(tup):
    return len(tup) == len(set(tup)); print(check_distinct((1, 4, 5, 6)))") == True ]
then
    echo "Test 179 passed"
else
    echo "Test 179 failed"
fi

if [ $(python -c "def check_distinct(tup):
    return len(tup) == len(set(tup)); print(check_distinct((2, 3, 4, 5, 6)))") == True ]
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
    # टुपल्स को उनके अद्वितीय रूप में कनवर्ट करने के लिए set डाटा संरचना का उपयोग करें
    unique_tuples = set(lst)
    # अद्वितीय टुपल्स की संख्या लौटाएं
    return len(unique_tuples)

if [ $(python -c "def extract_freq(lst):
    # टुपल्स को उनके अद्वितीय रूप में कनवर्ट करने के लिए set डाटा संरचना का उपयोग करें
    unique_tuples = set(lst)
    # अद्वितीय टुपल्स की संख्या लौटाएं
    return len(unique_tuples); print(extract_freq([(3, 4), (1, 2), (4, 3), (5, 6)] ))") == 3 ]
then
    echo "Test 185 passed"
else
    echo "Test 185 failed"
fi

if [ $(python -c "def extract_freq(lst):
    # टुपल्स को उनके अद्वितीय रूप में कनवर्ट करने के लिए set डाटा संरचना का उपयोग करें
    unique_tuples = set(lst)
    # अद्वितीय टुपल्स की संख्या लौटाएं
    return len(unique_tuples); print(extract_freq([(4, 15), (2, 3), (5, 4), (6, 7)] ))") == 4 ]
then
    echo "Test 185 passed"
else
    echo "Test 185 failed"
fi

if [ $(python -c "def extract_freq(lst):
    # टुपल्स को उनके अद्वितीय रूप में कनवर्ट करने के लिए set डाटा संरचना का उपयोग करें
    unique_tuples = set(lst)
    # अद्वितीय टुपल्स की संख्या लौटाएं
    return len(unique_tuples); print(extract_freq([(5, 16), (2, 3), (6, 5), (6, 9)] ))") == 4 ]
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
    if a < b:
        return a
    else:
        return b

if [ $(python -c "def minimum(a, b):
    if a < b:
        return a
    else:
        return b; print(minimum(1,2))") == 1 ]
then
    echo "Test 187 passed"
else
    echo "Test 187 failed"
fi

if [ $(python -c "def minimum(a, b):
    if a < b:
        return a
    else:
        return b; print(minimum(-5,-4))") == -5 ]
then
    echo "Test 187 passed"
else
    echo "Test 187 failed"
fi

if [ $(python -c "def minimum(a, b):
    if a < b:
        return a
    else:
        return b; print(minimum(0,0))") == 0 ]
then
    echo "Test 187 passed"
else
    echo "Test 187 failed"
fi

# Test 188
def check_tuplex(tuplex, element):
    return element in tuplex

# Test 189
def find_Parity(n):
    if n % 2 == 0:
        return False
    else:
        return True

if [ $(python -c "def find_Parity(n):
    if n % 2 == 0:
        return False
    else:
        return True; print(find_Parity(12))") == False ]
then
    echo "Test 189 passed"
else
    echo "Test 189 failed"
fi

if [ $(python -c "def find_Parity(n):
    if n % 2 == 0:
        return False
    else:
        return True; print(find_Parity(7))") == True ]
then
    echo "Test 189 passed"
else
    echo "Test 189 failed"
fi

if [ $(python -c "def find_Parity(n):
    if n % 2 == 0:
        return False
    else:
        return True; print(find_Parity(10))") == False ]
then
    echo "Test 189 passed"
else
    echo "Test 189 failed"
fi

# Test 190
def rearrange_bigger(num):
    # संख्या को अंकों की सूची में परिवर्तित करें
    digits = list(str(num))
    length = len(digits)

    # अंकों की सूची को उल्टा करें
    for i in range(length-1, 0, -1):
        if digits[i] > digits[i-1]:
            break

    # यदि संख्या पहले से ही सबसे बड़ी है, तो False लौटें
    if i == 1 and digits[i] <= digits[i-1]:
        return False

    # अन्यथा, अंकों को पुनर्व्यवस्थित करें
    x = digits[i-1]
    smallest = i
    for j in range(i+1, length):
        if digits[j] > x and digits[j] < digits[smallest]:
            smallest = j

    # अंकों को अदल-बदल करें
    digits[smallest], digits[i-1] = digits[i-1], digits[smallest]

    # बचे हुए अंकों को छोटे से बड़े क्रम में व्यवस्थित करें
    digits[i:] = sorted(digits[i:])

    # अंकों की सूची को वापस संख्या में परिवर्तित करें
    return int(''.join(digits))

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
                if nums1[i] + nums2[j] < -pairs[0][0]:
                    heapq.heappop(pairs)
                    heapq.heappush(pairs, (-(nums1[i] + nums2[j]), [nums1[i], nums2[j]]))
                else:
                    break
    return [heapq.heappop(pairs)[1] for _ in range(k) if pairs]

# Test 192
def min_product_tuple(lst):
    return min([a*b for a, b in lst])

# Test 193
def min_val(lst):
    # सूची में संख्याएँ ही लें
    nums = [i for i in lst if isinstance(i, (int, float))]
    # सबसे छोटी संख्या लौटाएं
    return min(nums) if nums else None

# Test 194
def snake_to_camel(word):
    return ''.join(x.capitalize() or '_' for x in word.split('_'))

if [ $(python -c "def snake_to_camel(word):
    return ''.join(x.capitalize() or '_' for x in word.split('_')); print(snake_to_camel('android_tv'))") == AndroidTv ]
then
    echo "Test 194 passed"
else
    echo "Test 194 failed"
fi

if [ $(python -c "def snake_to_camel(word):
    return ''.join(x.capitalize() or '_' for x in word.split('_')); print(snake_to_camel('google_pixel'))") == GooglePixel ]
then
    echo "Test 194 passed"
else
    echo "Test 194 failed"
fi

if [ $(python -c "def snake_to_camel(word):
    return ''.join(x.capitalize() or '_' for x in word.split('_')); print(snake_to_camel('apple_watch'))") == AppleWatch ]
then
    echo "Test 194 passed"
else
    echo "Test 194 failed"
fi

# Test 195
def remove_odd(numbers):
    return [num for num in numbers if num % 2 == 0]

if [ $(python -c "def remove_odd(numbers):
    return [num for num in numbers if num % 2 == 0]; print(remove_odd([1,2,3]))") == [2] ]
then
    echo "Test 195 passed"
else
    echo "Test 195 failed"
fi

if [ $(python -c "def remove_odd(numbers):
    return [num for num in numbers if num % 2 == 0]; print(remove_odd([2,4,6]))") == [2, 4, 6] ]
then
    echo "Test 195 passed"
else
    echo "Test 195 failed"
fi

if [ $(python -c "def remove_odd(numbers):
    return [num for num in numbers if num % 2 == 0]; print(remove_odd([10,20,3]))") == [10, 20] ]
then
    echo "Test 195 passed"
else
    echo "Test 195 failed"
fi

# Test 196
def extract_nth_element(tuples_list, n):
    return [tup[n] for tup in tuples_list]

# Test 197
def overlapping(lst1, lst2):
    return any(i in lst1 for i in lst2)

if [ $(python -c "def overlapping(lst1, lst2):
    return any(i in lst1 for i in lst2); print(overlapping([1,2,3,4,5],[6,7,8,9]))") == False ]
then
    echo "Test 197 passed"
else
    echo "Test 197 failed"
fi

if [ $(python -c "def overlapping(lst1, lst2):
    return any(i in lst1 for i in lst2); print(overlapping([1,2,3],[4,5,6]))") == False ]
then
    echo "Test 197 passed"
else
    echo "Test 197 failed"
fi

if [ $(python -c "def overlapping(lst1, lst2):
    return any(i in lst1 for i in lst2); print(overlapping([1,4,5],[1,4,5]))") == True ]
then
    echo "Test 197 passed"
else
    echo "Test 197 failed"
fi

# Test 198
def max_Product(lst):
    # सबसे पहले, हमें सूची को छोटे से बड़े क्रम में विन्यास करना होगा।
    lst.sort()
    # फिर, हमें दो उच्चतम उत्पाद वाले जोड़े की तुलना करनी होगी: सूची के अंत में दो सबसे बड़े संख्याएं और सूची की शुरुआत में दो सबसे छोटी संख्याएं।
    return max((lst[0], lst[1]), (lst[-1], lst[-2]), key=lambda pair: pair[0]*pair[1])

if [ $(python -c "def max_Product(lst):
    # सबसे पहले, हमें सूची को छोटे से बड़े क्रम में विन्यास करना होगा।
    lst.sort()
    # फिर, हमें दो उच्चतम उत्पाद वाले जोड़े की तुलना करनी होगी: सूची के अंत में दो सबसे बड़े संख्याएं और सूची की शुरुआत में दो सबसे छोटी संख्याएं।
    return max((lst[0], lst[1]), (lst[-1], lst[-2]), key=lambda pair: pair[0]*pair[1]); print(max_Product([1,2,3,4,7,0,8,4]))") == (7, 8) ]
then
    echo "Test 198 passed"
else
    echo "Test 198 failed"
fi

if [ $(python -c "def max_Product(lst):
    # सबसे पहले, हमें सूची को छोटे से बड़े क्रम में विन्यास करना होगा।
    lst.sort()
    # फिर, हमें दो उच्चतम उत्पाद वाले जोड़े की तुलना करनी होगी: सूची के अंत में दो सबसे बड़े संख्याएं और सूची की शुरुआत में दो सबसे छोटी संख्याएं।
    return max((lst[0], lst[1]), (lst[-1], lst[-2]), key=lambda pair: pair[0]*pair[1]); print(max_Product([0,-1,-2,-4,5,0,-6]))") == (-4, -6) ]
then
    echo "Test 198 passed"
else
    echo "Test 198 failed"
fi

if [ $(python -c "def max_Product(lst):
    # सबसे पहले, हमें सूची को छोटे से बड़े क्रम में विन्यास करना होगा।
    lst.sort()
    # फिर, हमें दो उच्चतम उत्पाद वाले जोड़े की तुलना करनी होगी: सूची के अंत में दो सबसे बड़े संख्याएं और सूची की शुरुआत में दो सबसे छोटी संख्याएं।
    return max((lst[0], lst[1]), (lst[-1], lst[-2]), key=lambda pair: pair[0]*pair[1]); print(max_Product([1,2,3]))") == (2, 3) ]
then
    echo "Test 198 passed"
else
    echo "Test 198 failed"
fi

# Test 199
def group_tuples(lst):
    result = []
    for tup in lst:
        if not result or tup[0] != result[-1][0]:
            result.append(list(tup))
        else:
            result[-1].append(tup[1])
    return [tuple(i) for i in result]

if [ $(python -c "def group_tuples(lst):
    result = []
    for tup in lst:
        if not result or tup[0] != result[-1][0]:
            result.append(list(tup))
        else:
            result[-1].append(tup[1])
    return [tuple(i) for i in result]; print(group_tuples([('x', 'y'), ('x', 'z'), ('w', 't')]))") == [('x', 'y', 'z'), ('w', 't')] ]
then
    echo "Test 199 passed"
else
    echo "Test 199 failed"
fi

if [ $(python -c "def group_tuples(lst):
    result = []
    for tup in lst:
        if not result or tup[0] != result[-1][0]:
            result.append(list(tup))
        else:
            result[-1].append(tup[1])
    return [tuple(i) for i in result]; print(group_tuples([('a', 'b'), ('a', 'c'), ('d', 'e')]))") == [('a', 'b', 'c'), ('d', 'e')] ]
then
    echo "Test 199 passed"
else
    echo "Test 199 failed"
fi

if [ $(python -c "def group_tuples(lst):
    result = []
    for tup in lst:
        if not result or tup[0] != result[-1][0]:
            result.append(list(tup))
        else:
            result[-1].append(tup[1])
    return [tuple(i) for i in result]; print(group_tuples([('f', 'g'), ('f', 'g'), ('h', 'i')]))") == [('f', 'g', 'g'), ('h', 'i')] ]
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
    # प्रत्येक संख्या को पूर्णांकित करने के लिए एक लूप चलाएं
    rounded_lst = [round(num) for num in lst]
    # सूची की संख्याओं का योग लें
    sum_lst = sum(rounded_lst)
    # कुल योग को सूची की लंबाई से गुणा करें
    result = sum_lst * len(lst)
    return result

# टेस्ट केसेस

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
def concatenate_tuple(tup):
    return '-'.join(str(i) for i in tup)

if [ $(python -c "def concatenate_tuple(tup):
    return '-'.join(str(i) for i in tup); print(concatenate_tuple(("ID", "is", 4, "UTS") ))") == ID-is-4-UTS ]
then
    echo "Test 203 passed"
else
    echo "Test 203 failed"
fi

if [ $(python -c "def concatenate_tuple(tup):
    return '-'.join(str(i) for i in tup); print(concatenate_tuple(("QWE", "is", 4, "RTY") ))") == QWE-is-4-RTY ]
then
    echo "Test 203 passed"
else
    echo "Test 203 failed"
fi

if [ $(python -c "def concatenate_tuple(tup):
    return '-'.join(str(i) for i in tup); print(concatenate_tuple(("ZEN", "is", 4, "OP") ))") == ZEN-is-4-OP ]
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
    count = 0
    for sublist in lst:
        if element in sublist:
            count += 1
    return count

# Test 207
def filter_oddnumbers(lst):
    return [i for i in lst if i % 2 != 0]

# Test 208
def change_date_format(dt):
    return '-'.join(dt.split('-')[::-1])

if [ $(python -c "def change_date_format(dt):
    return '-'.join(dt.split('-')[::-1]); print(change_date_format("2026-01-02"))") == 02-01-2026 ]
then
    echo "Test 208 passed"
else
    echo "Test 208 failed"
fi

if [ $(python -c "def change_date_format(dt):
    return '-'.join(dt.split('-')[::-1]); print(change_date_format("2020-11-13"))") == 13-11-2020 ]
then
    echo "Test 208 passed"
else
    echo "Test 208 failed"
fi

if [ $(python -c "def change_date_format(dt):
    return '-'.join(dt.split('-')[::-1]); print(change_date_format("2021-04-26"))") == 26-04-2021 ]
then
    echo "Test 208 passed"
else
    echo "Test 208 failed"
fi

# Test 209
def shell_sort(arr):
    n = len(arr)
    gap = n//2

    while gap > 0:
        for i in range(gap,n):
            temp = arr[i]
            j = i
            while  j >= gap and arr[j-gap] >temp:
                arr[j] = arr[j-gap]
                j -= gap
            arr[j] = temp
        gap //= 2

    return arr

if [ $(python -c "def shell_sort(arr):
    n = len(arr)
    gap = n//2

    while gap > 0:
        for i in range(gap,n):
            temp = arr[i]
            j = i
            while  j >= gap and arr[j-gap] >temp:
                arr[j] = arr[j-gap]
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
    n = len(arr)
    gap = n//2

    while gap > 0:
        for i in range(gap,n):
            temp = arr[i]
            j = i
            while  j >= gap and arr[j-gap] >temp:
                arr[j] = arr[j-gap]
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
    n = len(arr)
    gap = n//2

    while gap > 0:
        for i in range(gap,n):
            temp = arr[i]
            j = i
            while  j >= gap and arr[j-gap] >temp:
                arr[j] = arr[j-gap]
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
    # नियता की गणना के लिए सूत्र: D = c - (b**2 / 4a)
    D = c - (b**2 / (4*a))
    return D

# Test 212
def common_element(list1, list2):
    for i in list1:
        if i in list2:
            return True
    return None

# Test 213
def median_trapezium(a, b, h):
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
    if re.search('a[b]+', text):
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
    return ''.join([c for i, c in enumerate(s) if i % 2 != 0])

# Test 219
def count_bidirectional(pairs):
    bidirectional_count = 0
    for i in range(len(pairs)):
        if (pairs[i][1], pairs[i][0]) in pairs[i+1:]:
            bidirectional_count += 1
    return bidirectional_count

if [ $(python -c "def count_bidirectional(pairs):
    bidirectional_count = 0
    for i in range(len(pairs)):
        if (pairs[i][1], pairs[i][0]) in pairs[i+1:]:
            bidirectional_count += 1
    return bidirectional_count; print(count_bidirectional([(5, 6), (1, 2), (6, 5), (9, 1), (6, 5), (2, 1)] ))") == 3 ]
then
    echo "Test 219 passed"
else
    echo "Test 219 failed"
fi

if [ $(python -c "def count_bidirectional(pairs):
    bidirectional_count = 0
    for i in range(len(pairs)):
        if (pairs[i][1], pairs[i][0]) in pairs[i+1:]:
            bidirectional_count += 1
    return bidirectional_count; print(count_bidirectional([(5, 6), (1, 3), (6, 5), (9, 1), (6, 5), (2, 1)] ))") == 2 ]
then
    echo "Test 219 passed"
else
    echo "Test 219 failed"
fi

if [ $(python -c "def count_bidirectional(pairs):
    bidirectional_count = 0
    for i in range(len(pairs)):
        if (pairs[i][1], pairs[i][0]) in pairs[i+1:]:
            bidirectional_count += 1
    return bidirectional_count; print(count_bidirectional([(5, 6), (1, 2), (6, 5), (9, 2), (6, 5), (2, 1)] ))") == 4 ]
then
    echo "Test 219 passed"
else
    echo "Test 219 failed"
fi

# Test 220
def multiple_to_single(lst):
    return int(''.join(map(str, lst)))

# Test 221
import nltk
from nltk.corpus import wordnet

def find_adverb_position(sentence):
    words = nltk.word_tokenize(sentence)
    for i, word in enumerate(words):
        synsets = wordnet.synsets(word)
        if synsets and synsets[0].pos() == 'r':
            return i, len(word), word
    return None, None, None

# टेस्ट केस

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
    return min(neg_nums)

if [ $(python -c "def largest_neg(lst):
    neg_nums = [num for num in lst if num < 0]
    if not neg_nums:
        return None
    return min(neg_nums); print(largest_neg([1,2,3,-4,-6]))") == -6 ]
then
    echo "Test 224 passed"
else
    echo "Test 224 failed"
fi

if [ $(python -c "def largest_neg(lst):
    neg_nums = [num for num in lst if num < 0]
    if not neg_nums:
        return None
    return min(neg_nums); print(largest_neg([1,2,3,-8,-9]))") == -9 ]
then
    echo "Test 224 passed"
else
    echo "Test 224 failed"
fi

if [ $(python -c "def largest_neg(lst):
    neg_nums = [num for num in lst if num < 0]
    if not neg_nums:
        return None
    return min(neg_nums); print(largest_neg([1,2,3,4,-1]))") == -1 ]
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
    return tuple((a[0]*b[0], a[1]*b[1]) for a, b in zip(t1, t2))

if [ $(python -c "def index_multiplication(t1, t2):
    return tuple((a[0]*b[0], a[1]*b[1]) for a, b in zip(t1, t2)); print(index_multiplication(((1, 3), (4, 5), (2, 9), (1, 10)),((6, 7), (3, 9), (1, 1), (7, 3)) ))") == ((6, 21), (12, 45), (2, 9), (7, 30)) ]
then
    echo "Test 226 passed"
else
    echo "Test 226 failed"
fi

if [ $(python -c "def index_multiplication(t1, t2):
    return tuple((a[0]*b[0], a[1]*b[1]) for a, b in zip(t1, t2)); print(index_multiplication(((2, 4), (5, 6), (3, 10), (2, 11)),((7, 8), (4, 10), (2, 2), (8, 4)) ))") == ((14, 32), (20, 60), (6, 20), (16, 44)) ]
then
    echo "Test 226 passed"
else
    echo "Test 226 failed"
fi

if [ $(python -c "def index_multiplication(t1, t2):
    return tuple((a[0]*b[0], a[1]*b[1]) for a, b in zip(t1, t2)); print(index_multiplication(((3, 5), (6, 7), (4, 11), (3, 12)),((8, 9), (5, 11), (3, 3), (9, 5)) ))") == ((24, 45), (30, 77), (12, 33), (27, 60)) ]
then
    echo "Test 226 passed"
else
    echo "Test 226 failed"
fi

# Test 227
def count_Occurrence(tup, lst):
    count = 0
    for i in lst:
        count += tup.count(i)
    return count

if [ $(python -c "def count_Occurrence(tup, lst):
    count = 0
    for i in lst:
        count += tup.count(i)
    return count; print(count_Occurrence(('a', 'a', 'c', 'b', 'd'),['a', 'b'] ))") == 3 ]
then
    echo "Test 227 passed"
else
    echo "Test 227 failed"
fi

if [ $(python -c "def count_Occurrence(tup, lst):
    count = 0
    for i in lst:
        count += tup.count(i)
    return count; print(count_Occurrence((1, 2, 3, 1, 4, 6, 7, 1, 4),[1, 4, 7]))") == 6 ]
then
    echo "Test 227 passed"
else
    echo "Test 227 failed"
fi

if [ $(python -c "def count_Occurrence(tup, lst):
    count = 0
    for i in lst:
        count += tup.count(i)
    return count; print(count_Occurrence((1,2,3,4,5,6),[1,2]))") == 2 ]
then
    echo "Test 227 passed"
else
    echo "Test 227 failed"
fi

# Test 228
def cube_nums(lst):
    return [i**3 for i in lst]

# Test 230
def extract_string(lst, n):
    return [i for i in lst if len(i) == n]

# Test 231
def remove_whitespaces(input_string):
    return input_string.replace(" ", "")

if [ $(python -c "def remove_whitespaces(input_string):
    return input_string.replace(" ", ""); print(remove_whitespaces(' Google    Flutter '))") == GoogleFlutter ]
then
    echo "Test 231 passed"
else
    echo "Test 231 failed"
fi

if [ $(python -c "def remove_whitespaces(input_string):
    return input_string.replace(" ", ""); print(remove_whitespaces(' Google    Dart '))") == GoogleDart ]
then
    echo "Test 231 passed"
else
    echo "Test 231 failed"
fi

if [ $(python -c "def remove_whitespaces(input_string):
    return input_string.replace(" ", ""); print(remove_whitespaces(' iOS    Swift '))") == iOSSwift ]
then
    echo "Test 231 passed"
else
    echo "Test 231 failed"
fi

# Test 232
def loss_amount(cost_price, selling_price):
    if cost_price > selling_price:
        return cost_price - selling_price
    else:
        return 0

# Test 233
def sumofFactors(n) :
    sum = 0
    i = 1
    while i <= n :
        if (n % i==0) :
            sum = sum + i
        i = i + 1
    return sum

if [ $(python -c "def sumofFactors(n) :
    sum = 0
    i = 1
    while i <= n :
        if (n % i==0) :
            sum = sum + i
        i = i + 1
    return sum; print(sumofFactors(18))") == 26 ]
then
    echo "Test 233 passed"
else
    echo "Test 233 failed"
fi

if [ $(python -c "def sumofFactors(n) :
    sum = 0
    i = 1
    while i <= n :
        if (n % i==0) :
            sum = sum + i
        i = i + 1
    return sum; print(sumofFactors(30))") == 48 ]
then
    echo "Test 233 passed"
else
    echo "Test 233 failed"
fi

if [ $(python -c "def sumofFactors(n) :
    sum = 0
    i = 1
    while i <= n :
        if (n % i==0) :
            sum = sum + i
        i = i + 1
    return sum; print(sumofFactors(6))") == 8 ]
then
    echo "Test 233 passed"
else
    echo "Test 233 failed"
fi

# Test 234
import re

def text_match_wordz(text):
    pattern = '[\w]*z[\W]*'
    if re.search(pattern,  text):
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
def rectangle_area(length, breadth):
    return length * breadth

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
from itertools import chain, combinations

def combinations_list(lst):
    return [list(comb) for comb in chain(*map(lambda x: combinations(lst, x), range(0, len(lst)+1)))]

print(combinations_list(['orange', 'red', 'green', 'blue']))
print(combinations_list(['red', 'green', 'blue', 'white', 'black', 'orange']))
print(combinations_list(['red', 'green', 'black', 'orange']))

# Test 243
def max_subarray_product(arr):
    n = len(arr)

    # Initialize result
    result = arr[0]

    # Initialize max and min product for every maximum subarray ending with arr[i]
    max_ending_here = min_ending_here = arr[0]

    # Iterate over the array
    for i in range(1, n):
        # When multiplied by -ve number, max_ending_here can become min_ending_here and vice-versa
        if arr[i] < 0:
            max_ending_here, min_ending_here = min_ending_here, max_ending_here

        # Update max and min product for current index
        max_ending_here = max(arr[i], max_ending_here * arr[i])
        min_ending_here = min(arr[i], min_ending_here * arr[i])

        # Update result
        result = max(result, max_ending_here)

    return result

if [ $(python -c "def max_subarray_product(arr):
    n = len(arr)

    # Initialize result
    result = arr[0]

    # Initialize max and min product for every maximum subarray ending with arr[i]
    max_ending_here = min_ending_here = arr[0]

    # Iterate over the array
    for i in range(1, n):
        # When multiplied by -ve number, max_ending_here can become min_ending_here and vice-versa
        if arr[i] < 0:
            max_ending_here, min_ending_here = min_ending_here, max_ending_here

        # Update max and min product for current index
        max_ending_here = max(arr[i], max_ending_here * arr[i])
        min_ending_here = min(arr[i], min_ending_here * arr[i])

        # Update result
        result = max(result, max_ending_here)

    return result; print(max_subarray_product([1, -2, -3, 0, 7, -8, -2]))") == 112 ]
then
    echo "Test 243 passed"
else
    echo "Test 243 failed"
fi

if [ $(python -c "def max_subarray_product(arr):
    n = len(arr)

    # Initialize result
    result = arr[0]

    # Initialize max and min product for every maximum subarray ending with arr[i]
    max_ending_here = min_ending_here = arr[0]

    # Iterate over the array
    for i in range(1, n):
        # When multiplied by -ve number, max_ending_here can become min_ending_here and vice-versa
        if arr[i] < 0:
            max_ending_here, min_ending_here = min_ending_here, max_ending_here

        # Update max and min product for current index
        max_ending_here = max(arr[i], max_ending_here * arr[i])
        min_ending_here = min(arr[i], min_ending_here * arr[i])

        # Update result
        result = max(result, max_ending_here)

    return result; print(max_subarray_product([6, -3, -10, 0, 2]))") == 180 ]
then
    echo "Test 243 passed"
else
    echo "Test 243 failed"
fi

if [ $(python -c "def max_subarray_product(arr):
    n = len(arr)

    # Initialize result
    result = arr[0]

    # Initialize max and min product for every maximum subarray ending with arr[i]
    max_ending_here = min_ending_here = arr[0]

    # Iterate over the array
    for i in range(1, n):
        # When multiplied by -ve number, max_ending_here can become min_ending_here and vice-versa
        if arr[i] < 0:
            max_ending_here, min_ending_here = min_ending_here, max_ending_here

        # Update max and min product for current index
        max_ending_here = max(arr[i], max_ending_here * arr[i])
        min_ending_here = min(arr[i], min_ending_here * arr[i])

        # Update result
        result = max(result, max_ending_here)

    return result; print(max_subarray_product([-2, -40, 0, -2, -3]))") == 80 ]
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
def max_product(lst):
    n = len(lst)
    lst.sort()
    max_product = 0
    for i in range(n):
        product = 1
        for j in range(i, n):
            product *= lst[j]
            if product > max_product:
                max_product = product
    return max_product

if [ $(python -c "def max_product(lst):
    n = len(lst)
    lst.sort()
    max_product = 0
    for i in range(n):
        product = 1
        for j in range(i, n):
            product *= lst[j]
            if product > max_product:
                max_product = product
    return max_product; print(max_product([3, 100, 4, 5, 150, 6]))") == 3000 ]
then
    echo "Test 246 passed"
else
    echo "Test 246 failed"
fi

if [ $(python -c "def max_product(lst):
    n = len(lst)
    lst.sort()
    max_product = 0
    for i in range(n):
        product = 1
        for j in range(i, n):
            product *= lst[j]
            if product > max_product:
                max_product = product
    return max_product; print(max_product([4, 42, 55, 68, 80]))") == 50265600 ]
then
    echo "Test 246 passed"
else
    echo "Test 246 failed"
fi

if [ $(python -c "def max_product(lst):
    n = len(lst)
    lst.sort()
    max_product = 0
    for i in range(n):
        product = 1
        for j in range(i, n):
            product *= lst[j]
            if product > max_product:
                max_product = product
    return max_product; print(max_product([10, 22, 9, 33, 21, 50, 41, 60]))") == 2460 ]
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
def find_remainder(lst, n):
    product = 1
    for i in lst:
        product = (product * i) % n
    return product

# Test 249
def check_Consecutive(list):
    return sorted(list) == list(range(min(list), max(list)+1))

if [ $(python -c "def check_Consecutive(list):
    return sorted(list) == list(range(min(list), max(list)+1)); print(check_Consecutive([1,2,3,4,5]))") == True ]
then
    echo "Test 249 passed"
else
    echo "Test 249 failed"
fi

if [ $(python -c "def check_Consecutive(list):
    return sorted(list) == list(range(min(list), max(list)+1)); print(check_Consecutive([1,2,3,5,6]))") == False ]
then
    echo "Test 249 passed"
else
    echo "Test 249 failed"
fi

if [ $(python -c "def check_Consecutive(list):
    return sorted(list) == list(range(min(list), max(list)+1)); print(check_Consecutive([1,2,1]))") == False ]
then
    echo "Test 249 passed"
else
    echo "Test 249 failed"
fi

# Test 250
def tuple_intersection(lst1, lst2):
    set1 = set(map(tuple, [sorted(tup) for tup in lst1]))
    set2 = set(map(tuple, [sorted(tup) for tup in lst2]))
    return set1 & set2

if [ $(python -c "def tuple_intersection(lst1, lst2):
    set1 = set(map(tuple, [sorted(tup) for tup in lst1]))
    set2 = set(map(tuple, [sorted(tup) for tup in lst2]))
    return set1 & set2; print(tuple_intersection([(3, 4), (5, 6), (9, 10), (4, 5)] , [(5, 4), (3, 4), (6, 5), (9, 11)]))") == {(4, 5), (5, 6), (3, 4)} ]
then
    echo "Test 250 passed"
else
    echo "Test 250 failed"
fi

if [ $(python -c "def tuple_intersection(lst1, lst2):
    set1 = set(map(tuple, [sorted(tup) for tup in lst1]))
    set2 = set(map(tuple, [sorted(tup) for tup in lst2]))
    return set1 & set2; print(tuple_intersection([(4, 1), (7, 4), (11, 13), (17, 14)] , [(1, 4), (7, 4), (16, 12), (10, 13)]))") == {(4, 7), (1, 4)} ]
then
    echo "Test 250 passed"
else
    echo "Test 250 failed"
fi

if [ $(python -c "def tuple_intersection(lst1, lst2):
    set1 = set(map(tuple, [sorted(tup) for tup in lst1]))
    set2 = set(map(tuple, [sorted(tup) for tup in lst2]))
    return set1 & set2; print(tuple_intersection([(2, 1), (3, 2), (1, 3), (1, 4)] , [(11, 2), (2, 3), (6, 2), (1, 3)]))") == {(2, 3), (1, 3)} ]
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
    # संख्या को स्ट्रिंग में परिवर्तित करें
    n = str(n)
    # पहला अंक लौटाएं
    return int(n[0])

if [ $(python -c "def first_Digit(n):
    # संख्या को स्ट्रिंग में परिवर्तित करें
    n = str(n)
    # पहला अंक लौटाएं
    return int(n[0]); print(first_Digit(123))") == 1 ]
then
    echo "Test 256 passed"
else
    echo "Test 256 failed"
fi

if [ $(python -c "def first_Digit(n):
    # संख्या को स्ट्रिंग में परिवर्तित करें
    n = str(n)
    # पहला अंक लौटाएं
    return int(n[0]); print(first_Digit(456))") == 4 ]
then
    echo "Test 256 passed"
else
    echo "Test 256 failed"
fi

if [ $(python -c "def first_Digit(n):
    # संख्या को स्ट्रिंग में परिवर्तित करें
    n = str(n)
    # पहला अंक लौटाएं
    return int(n[0]); print(first_Digit(12))") == 1 ]
then
    echo "Test 256 passed"
else
    echo "Test 256 failed"
fi

