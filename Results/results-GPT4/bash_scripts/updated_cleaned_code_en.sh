#!/bin/bash

# Test 0
def remove_Occ(s, c):
    first = s.find(c)
    last = s.rfind(c)
    if first != -1 and last != -1:
        s = s[:first] + s[first+1:]
        last = s.rfind(c)
        s = s[:last] + s[last+1:]
    return s

if [ $(python -c "def remove_Occ(s, c):
    first = s.find(c)
    last = s.rfind(c)
    if first != -1 and last != -1:
        s = s[:first] + s[first+1:]
        last = s.rfind(c)
        s = s[:last] + s[last+1:]
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
        s = s[:first] + s[first+1:]
        last = s.rfind(c)
        s = s[:last] + s[last+1:]
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
        s = s[:first] + s[first+1:]
        last = s.rfind(c)
        s = s[:last] + s[last+1:]
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
import re

def text_lowercase_underscore(s):
    return bool(re.match(r'^[a-z]+(_[a-z]+)*$', s))

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
def is_woodall(n):
    i = 1
    while True:
        woodall = i * (2 ** i) - 1
        if woodall == n:
            return True
        elif woodall > n:
            return False
        i += 1

if [ $(python -c "def is_woodall(n):
    i = 1
    while True:
        woodall = i * (2 ** i) - 1
        if woodall == n:
            return True
        elif woodall > n:
            return False
        i += 1; print(is_woodall(383))") == True ]
then
    echo "Test 7 passed"
else
    echo "Test 7 failed"
fi

if [ $(python -c "def is_woodall(n):
    i = 1
    while True:
        woodall = i * (2 ** i) - 1
        if woodall == n:
            return True
        elif woodall > n:
            return False
        i += 1; print(is_woodall(254))") == False ]
then
    echo "Test 7 passed"
else
    echo "Test 7 failed"
fi

if [ $(python -c "def is_woodall(n):
    i = 1
    while True:
        woodall = i * (2 ** i) - 1
        if woodall == n:
            return True
        elif woodall > n:
            return False
        i += 1; print(is_woodall(200))") == False ]
then
    echo "Test 7 passed"
else
    echo "Test 7 failed"
fi

# Test 8
def check(n):
    # Reverse the number
    rev = int(str(n)[::-1])
    # Check if the number is one less than twice its reverse
    return n == 2*rev - 1

if [ $(python -c "def check(n):
    # Reverse the number
    rev = int(str(n)[::-1])
    # Check if the number is one less than twice its reverse
    return n == 2*rev - 1; print(check(70))") == False ]
then
    echo "Test 8 passed"
else
    echo "Test 8 failed"
fi

if [ $(python -c "def check(n):
    # Reverse the number
    rev = int(str(n)[::-1])
    # Check if the number is one less than twice its reverse
    return n == 2*rev - 1; print(check(23))") == False ]
then
    echo "Test 8 passed"
else
    echo "Test 8 failed"
fi

if [ $(python -c "def check(n):
    # Reverse the number
    rev = int(str(n)[::-1])
    # Check if the number is one less than twice its reverse
    return n == 2*rev - 1; print(check(73))") == True ]
then
    echo "Test 8 passed"
else
    echo "Test 8 failed"
fi

# Test 9
def find_Max_Num(lst):
    lst = sorted(lst, reverse=True)
    str_lst = [str(i) for i in lst]
    return int(''.join(str_lst))

if [ $(python -c "def find_Max_Num(lst):
    lst = sorted(lst, reverse=True)
    str_lst = [str(i) for i in lst]
    return int(''.join(str_lst)); print(find_Max_Num([1,2,3]))") == 321 ]
then
    echo "Test 9 passed"
else
    echo "Test 9 failed"
fi

if [ $(python -c "def find_Max_Num(lst):
    lst = sorted(lst, reverse=True)
    str_lst = [str(i) for i in lst]
    return int(''.join(str_lst)); print(find_Max_Num([4,5,6,1]))") == 6541 ]
then
    echo "Test 9 passed"
else
    echo "Test 9 failed"
fi

if [ $(python -c "def find_Max_Num(lst):
    lst = sorted(lst, reverse=True)
    str_lst = [str(i) for i in lst]
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
    return sorted(lst, key=lambda x: x[1])

# Test 16
def recursive_list_sum(data_list):
    total = 0
    for element in data_list:
        if type(element) == list: # if element is a list, call the function recursively
            total += recursive_list_sum(element)
        else:
            total += element
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
def is_Monotonic(A):
    return (all(A[i] <= A[i + 1] for i in range(len(A) - 1)) or
            all(A[i] >= A[i + 1] for i in range(len(A) - 1)))

if [ $(python -c "def is_Monotonic(A):
    return (all(A[i] <= A[i + 1] for i in range(len(A) - 1)) or
            all(A[i] >= A[i + 1] for i in range(len(A) - 1))); print(is_Monotonic([6, 5, 4, 4]))") == True ]
then
    echo "Test 19 passed"
else
    echo "Test 19 failed"
fi

if [ $(python -c "def is_Monotonic(A):
    return (all(A[i] <= A[i + 1] for i in range(len(A) - 1)) or
            all(A[i] >= A[i + 1] for i in range(len(A) - 1))); print(is_Monotonic([1, 2, 2, 3]))") == True ]
then
    echo "Test 19 passed"
else
    echo "Test 19 failed"
fi

if [ $(python -c "def is_Monotonic(A):
    return (all(A[i] <= A[i + 1] for i in range(len(A) - 1)) or
            all(A[i] >= A[i + 1] for i in range(len(A) - 1))); print(is_Monotonic([1, 3, 2]))") == False ]
then
    echo "Test 19 passed"
else
    echo "Test 19 failed"
fi

# Test 20
def is_sublist(lst, sub_lst):
    len_sub_lst = len(sub_lst)
    for i in range(len(lst)):
        if lst[i:i+len_sub_lst] == sub_lst:
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
            i += 1

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
            i += 1

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
            i += 1

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
            i += 1

    return lst; print(comb_sort([99, 15, 13, 47]))") == [13, 15, 47, 99] ]
then
    echo "Test 22 passed"
else
    echo "Test 22 failed"
fi

# Test 23
def dif_Square(n):
    for i in range(1, int(n**0.5)+1):
        if ((n + i**2) ** 0.5) % 1 == 0:
            return True
    return False

if [ $(python -c "def dif_Square(n):
    for i in range(1, int(n**0.5)+1):
        if ((n + i**2) ** 0.5) % 1 == 0:
            return True
    return False; print(dif_Square(5))") == True ]
then
    echo "Test 23 passed"
else
    echo "Test 23 failed"
fi

if [ $(python -c "def dif_Square(n):
    for i in range(1, int(n**0.5)+1):
        if ((n + i**2) ** 0.5) % 1 == 0:
            return True
    return False; print(dif_Square(10))") == False ]
then
    echo "Test 23 passed"
else
    echo "Test 23 failed"
fi

if [ $(python -c "def dif_Square(n):
    for i in range(1, int(n**0.5)+1):
        if ((n + i**2) ** 0.5) % 1 == 0:
            return True
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
    color_pattern_dict = {}
    for i in range(len(colors)):
        if patterns[i] in color_pattern_dict:
            if color_pattern_dict[patterns[i]] != colors[i]:
                return False
        else:
            if colors[i] in color_pattern_dict.values():
                return False
            color_pattern_dict[patterns[i]] = colors[i]
    return True

# Test 25
def find_tuples(lst, k):
    return [tup for tup in lst if all(i % k == 0 for i in tup)]

if [ $(python -c "def find_tuples(lst, k):
    return [tup for tup in lst if all(i % k == 0 for i in tup)]; print(find_tuples([(6, 24, 12), (7, 9, 6), (12, 18, 21)], 6))") == [(6, 24, 12)] ]
then
    echo "Test 25 passed"
else
    echo "Test 25 failed"
fi

if [ $(python -c "def find_tuples(lst, k):
    return [tup for tup in lst if all(i % k == 0 for i in tup)]; print(find_tuples([(5, 25, 30), (4, 2, 3), (7, 8, 9)], 5))") == [(5, 25, 30)] ]
then
    echo "Test 25 passed"
else
    echo "Test 25 failed"
fi

if [ $(python -c "def find_tuples(lst, k):
    return [tup for tup in lst if all(i % k == 0 for i in tup)]; print(find_tuples([(7, 9, 16), (8, 16, 4), (19, 17, 18)], 4))") == [(8, 16, 4)] ]
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
    return (n * (n + 1) * (n + 2)) // 6

if [ $(python -c "def tetrahedral_number(n):
    return (n * (n + 1) * (n + 2)) // 6; print(tetrahedral_number(5))") == 35 ]
then
    echo "Test 28 passed"
else
    echo "Test 28 failed"
fi

if [ $(python -c "def tetrahedral_number(n):
    return (n * (n + 1) * (n + 2)) // 6; print(tetrahedral_number(6))") == 56 ]
then
    echo "Test 28 passed"
else
    echo "Test 28 failed"
fi

if [ $(python -c "def tetrahedral_number(n):
    return (n * (n + 1) * (n + 2)) // 6; print(tetrahedral_number(7))") == 84 ]
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
        P = [0, 1, 1] + [0] * (n-2)
        for i in range(3, n+1):
            P[i] = P[P[i-1]] + P[i-P[i-1]]
        return P[n]

if [ $(python -c "def sequence(n):
    if n == 1 or n == 2:
        return 1
    else:
        P = [0, 1, 1] + [0] * (n-2)
        for i in range(3, n+1):
            P[i] = P[P[i-1]] + P[i-P[i-1]]
        return P[n]; print(sequence(10))") == 6 ]
then
    echo "Test 31 passed"
else
    echo "Test 31 failed"
fi

if [ $(python -c "def sequence(n):
    if n == 1 or n == 2:
        return 1
    else:
        P = [0, 1, 1] + [0] * (n-2)
        for i in range(3, n+1):
            P[i] = P[P[i-1]] + P[i-P[i-1]]
        return P[n]; print(sequence(2))") == 1 ]
then
    echo "Test 31 passed"
else
    echo "Test 31 failed"
fi

if [ $(python -c "def sequence(n):
    if n == 1 or n == 2:
        return 1
    else:
        P = [0, 1, 1] + [0] * (n-2)
        for i in range(3, n+1):
            P[i] = P[P[i-1]] + P[i-P[i-1]]
        return P[n]; print(sequence(3))") == 2 ]
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
def len_log(word_list):
    return max(len(word) for word in word_list)

if [ $(python -c "def len_log(word_list):
    return max(len(word) for word in word_list); print(len_log(["python","PHP","bigdata"]))") == 7 ]
then
    echo "Test 37 passed"
else
    echo "Test 37 failed"
fi

if [ $(python -c "def len_log(word_list):
    return max(len(word) for word in word_list); print(len_log(["a","ab","abc"]))") == 3 ]
then
    echo "Test 37 passed"
else
    echo "Test 37 failed"
fi

if [ $(python -c "def len_log(word_list):
    return max(len(word) for word in word_list); print(len_log(["small","big","tall"]))") == 5 ]
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
    return all(n[i] == n[i-2] for i in range(2, len(n)))

if [ $(python -c "def is_undulating(n):
    n = str(n)
    if len(n) < 3:
        return False
    return all(n[i] == n[i-2] for i in range(2, len(n))); print(is_undulating(1212121))") == True ]
then
    echo "Test 39 passed"
else
    echo "Test 39 failed"
fi

if [ $(python -c "def is_undulating(n):
    n = str(n)
    if len(n) < 3:
        return False
    return all(n[i] == n[i-2] for i in range(2, len(n))); print(is_undulating(1991))") == False ]
then
    echo "Test 39 passed"
else
    echo "Test 39 failed"
fi

if [ $(python -c "def is_undulating(n):
    n = str(n)
    if len(n) < 3:
        return False
    return all(n[i] == n[i-2] for i in range(2, len(n))); print(is_undulating(121))") == True ]
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
def Find_Min_Length(list_of_lists):
    return min(len(lst) for lst in list_of_lists)

if [ $(python -c "def Find_Min_Length(list_of_lists):
    return min(len(lst) for lst in list_of_lists); print(Find_Min_Length([[1],[1,2]]))") == 1 ]
then
    echo "Test 42 passed"
else
    echo "Test 42 failed"
fi

if [ $(python -c "def Find_Min_Length(list_of_lists):
    return min(len(lst) for lst in list_of_lists); print(Find_Min_Length([[1,2],[1,2,3],[1,2,3,4]]))") == 2 ]
then
    echo "Test 42 passed"
else
    echo "Test 42 failed"
fi

if [ $(python -c "def Find_Min_Length(list_of_lists):
    return min(len(lst) for lst in list_of_lists); print(Find_Min_Length([[3,3,3],[4,4,4,4]]))") == 3 ]
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
def frequency_lists(list_of_lists):
    # Flatten the list of lists
    flat_list = [item for sublist in list_of_lists for item in sublist]
    
    # Create a dictionary to store the frequency of each element
    freq_dict = {}
    
    # Iterate over the flattened list
    for item in flat_list:
        # If the item is already in the dictionary, increment its count
        if item in freq_dict:
            freq_dict[item] += 1
        # If the item is not in the dictionary, add it with a count of 1
        else:
            freq_dict[item] = 1
    
    return freq_dict

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
def kth_element(arr, k):
    if k > len(arr) or k < 1:
        return None
    return arr[k-1]

if [ $(python -c "def kth_element(arr, k):
    if k > len(arr) or k < 1:
        return None
    return arr[k-1]; print(kth_element([12,3,5,7,19], 2))") == 3 ]
then
    echo "Test 48 passed"
else
    echo "Test 48 failed"
fi

if [ $(python -c "def kth_element(arr, k):
    if k > len(arr) or k < 1:
        return None
    return arr[k-1]; print(kth_element([17,24,8,23], 3))") == 8 ]
then
    echo "Test 48 passed"
else
    echo "Test 48 failed"
fi

if [ $(python -c "def kth_element(arr, k):
    if k > len(arr) or k < 1:
        return None
    return arr[k-1]; print(kth_element([16,21,25,36,4], 4))") == 36 ]
then
    echo "Test 48 passed"
else
    echo "Test 48 failed"
fi

# Test 49
def snake_to_camel(snake_str):
    components = snake_str.split('_')
    return ''.join(x.title() for x in components)

# Test 50
def eulerian_num(n, m):
    # Initialize a 2D array with all values as 0
    euler = [[0 for i in range(m+1)] for j in range(n+1)]
    
    # Fill the 2D array in bottom up manner
    for i in range(1, n+1):
        for j in range(0, min(i, m+1)):
            # Base case
            if j == 0 or j == i-1:
                euler[i][j] = 1
            # Fill entries of euler[i][j]
            else:
                euler[i][j] = ((i-j)*euler[i-1][j-1]) + ((j+1)*euler[i-1][j])
    
    # Return the last entry
    return euler[n][m]

if [ $(python -c "def eulerian_num(n, m):
    # Initialize a 2D array with all values as 0
    euler = [[0 for i in range(m+1)] for j in range(n+1)]
    
    # Fill the 2D array in bottom up manner
    for i in range(1, n+1):
        for j in range(0, min(i, m+1)):
            # Base case
            if j == 0 or j == i-1:
                euler[i][j] = 1
            # Fill entries of euler[i][j]
            else:
                euler[i][j] = ((i-j)*euler[i-1][j-1]) + ((j+1)*euler[i-1][j])
    
    # Return the last entry
    return euler[n][m]; print(eulerian_num(3, 1))") == 4 ]
then
    echo "Test 50 passed"
else
    echo "Test 50 failed"
fi

if [ $(python -c "def eulerian_num(n, m):
    # Initialize a 2D array with all values as 0
    euler = [[0 for i in range(m+1)] for j in range(n+1)]
    
    # Fill the 2D array in bottom up manner
    for i in range(1, n+1):
        for j in range(0, min(i, m+1)):
            # Base case
            if j == 0 or j == i-1:
                euler[i][j] = 1
            # Fill entries of euler[i][j]
            else:
                euler[i][j] = ((i-j)*euler[i-1][j-1]) + ((j+1)*euler[i-1][j])
    
    # Return the last entry
    return euler[n][m]; print(eulerian_num(4, 1))") == 11 ]
then
    echo "Test 50 passed"
else
    echo "Test 50 failed"
fi

if [ $(python -c "def eulerian_num(n, m):
    # Initialize a 2D array with all values as 0
    euler = [[0 for i in range(m+1)] for j in range(n+1)]
    
    # Fill the 2D array in bottom up manner
    for i in range(1, n+1):
        for j in range(0, min(i, m+1)):
            # Base case
            if j == 0 or j == i-1:
                euler[i][j] = 1
            # Fill entries of euler[i][j]
            else:
                euler[i][j] = ((i-j)*euler[i-1][j-1]) + ((j+1)*euler[i-1][j])
    
    # Return the last entry
    return euler[n][m]; print(eulerian_num(5, 3))") == 26 ]
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
    # Combine all three lists
    combined_list = list1 + list2 + list3
    # Sort the combined list
    sorted_list = sorted(combined_list)
    # Return the sorted list
    return sorted_list

# Test 55
def odd_Equivalent(bin_str, rotations):
    odd_count = 0
    for i in range(rotations):
        bin_str = bin_str[-1] + bin_str[:-1]
        if int(bin_str, 2) % 2 != 0:
            odd_count += 1
    return odd_count

if [ $(python -c "def odd_Equivalent(bin_str, rotations):
    odd_count = 0
    for i in range(rotations):
        bin_str = bin_str[-1] + bin_str[:-1]
        if int(bin_str, 2) % 2 != 0:
            odd_count += 1
    return odd_count; print(odd_Equivalent("011001",6))") == 3 ]
then
    echo "Test 55 passed"
else
    echo "Test 55 failed"
fi

if [ $(python -c "def odd_Equivalent(bin_str, rotations):
    odd_count = 0
    for i in range(rotations):
        bin_str = bin_str[-1] + bin_str[:-1]
        if int(bin_str, 2) % 2 != 0:
            odd_count += 1
    return odd_count; print(odd_Equivalent("11011",5))") == 4 ]
then
    echo "Test 55 passed"
else
    echo "Test 55 failed"
fi

if [ $(python -c "def odd_Equivalent(bin_str, rotations):
    odd_count = 0
    for i in range(rotations):
        bin_str = bin_str[-1] + bin_str[:-1]
        if int(bin_str, 2) % 2 != 0:
            odd_count += 1
    return odd_count; print(odd_Equivalent("1010",4))") == 2 ]
then
    echo "Test 55 passed"
else
    echo "Test 55 failed"
fi

# Test 56
def common_in_nested_lists(nested_lists):
    # Convert the first list to a set
    common_elements = set(nested_lists[0])

    # Iterate over the remaining lists
    for lst in nested_lists[1:]:
        # Update the set of common elements to be the intersection of the current set and the current list
        common_elements &= set(lst)

    # Return the common elements as a list
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
    if type(lst) is dict:
        return not bool(lst)
    return all(not d for d in lst)

# Test 59
def tuple_to_int(t):
    return int(''.join(map(str, t)))

# Test 60
def list_to_float(lst):
    new_lst = []
    for sub_lst in lst:
        new_sub_lst = []
        for item in sub_lst:
            try:
                new_sub_lst.append(float(item))
            except ValueError:
                new_sub_lst.append(item)
        new_lst.append(tuple(new_sub_lst))
    return new_lst

if [ $(python -c "def list_to_float(lst):
    new_lst = []
    for sub_lst in lst:
        new_sub_lst = []
        for item in sub_lst:
            try:
                new_sub_lst.append(float(item))
            except ValueError:
                new_sub_lst.append(item)
        new_lst.append(tuple(new_sub_lst))
    return new_lst; print(list_to_float( [("3", "4"), ("1", "26.45"), ("7.32", "8"), ("4", "8")] ))") == [(3.0, 4.0), (1.0, 26.45), (7.32, 8.0), (4.0, 8.0)] ]
then
    echo "Test 60 passed"
else
    echo "Test 60 failed"
fi

if [ $(python -c "def list_to_float(lst):
    new_lst = []
    for sub_lst in lst:
        new_sub_lst = []
        for item in sub_lst:
            try:
                new_sub_lst.append(float(item))
            except ValueError:
                new_sub_lst.append(item)
        new_lst.append(tuple(new_sub_lst))
    return new_lst; print(list_to_float( [("4", "4"), ("2", "27"), ("4.12", "9"), ("7", "11")] ))") == [(4.0, 4.0), (2.0, 27.0), (4.12, 9.0), (7.0, 11.0)] ]
then
    echo "Test 60 passed"
else
    echo "Test 60 failed"
fi

if [ $(python -c "def list_to_float(lst):
    new_lst = []
    for sub_lst in lst:
        new_sub_lst = []
        for item in sub_lst:
            try:
                new_sub_lst.append(float(item))
            except ValueError:
                new_sub_lst.append(item)
        new_lst.append(tuple(new_sub_lst))
    return new_lst; print(list_to_float( [("6", "78"), ("5", "26.45"), ("1.33", "4"), ("82", "13")] ))") == [(6.0, 78.0), (5.0, 26.45), (1.33, 4.0), (82.0, 13.0)] ]
then
    echo "Test 60 passed"
else
    echo "Test 60 failed"
fi

# Test 61
def string_to_list(s):
    return s.split(' ')

# Test 62
def search(arr):
    # Initialize result
    result = 0

    # Traverse the array
    for i in arr:
        # XOR operation
        result = result ^ i

    return result

if [ $(python -c "def search(arr):
    # Initialize result
    result = 0

    # Traverse the array
    for i in arr:
        # XOR operation
        result = result ^ i

    return result; print(search([1,1,2,2,3]))") == 3 ]
then
    echo "Test 62 passed"
else
    echo "Test 62 failed"
fi

if [ $(python -c "def search(arr):
    # Initialize result
    result = 0

    # Traverse the array
    for i in arr:
        # XOR operation
        result = result ^ i

    return result; print(search([1,1,3,3,4,4,5,5,7,7,8]))") == 8 ]
then
    echo "Test 62 passed"
else
    echo "Test 62 failed"
fi

if [ $(python -c "def search(arr):
    # Initialize result
    result = 0

    # Traverse the array
    for i in arr:
        # XOR operation
        result = result ^ i

    return result; print(search([1,2,2,3,3,4,4]))") == 1 ]
then
    echo "Test 62 passed"
else
    echo "Test 62 failed"
fi

# Test 63
def max_product_tuple(lst):
    max_product = 0
    for tup in lst:
        product = abs(tup[0] * tup[1])
        if product > max_product:
            max_product = product
    return max_product

# Test 64
def amicable_numbers_sum(n):
    def d(num):
        return sum(i for i in range(1, num) if num % i == 0)

    amicable_sum = 0
    for i in range(1, n):
        if d(d(i)) == i and d(i) != i:
            amicable_sum += i
    return amicable_sum

# Test 65
import cmath

def angle_complex(real, imaginary):
    complex_number = real + imaginary
    return cmath.phase(complex_number)

# Test 66
def find_length(s):
    max_diff = 0
    curr_diff = 0
    for i in s:
        if i == '0':
            curr_diff += 1
        else:
            curr_diff -= 1
        if curr_diff < 0:
            curr_diff = 0
        max_diff = max(max_diff, curr_diff)
    return max_diff

if [ $(python -c "def find_length(s):
    max_diff = 0
    curr_diff = 0
    for i in s:
        if i == '0':
            curr_diff += 1
        else:
            curr_diff -= 1
        if curr_diff < 0:
            curr_diff = 0
        max_diff = max(max_diff, curr_diff)
    return max_diff; print(find_length("11000010001"))") == 6 ]
then
    echo "Test 66 passed"
else
    echo "Test 66 failed"
fi

if [ $(python -c "def find_length(s):
    max_diff = 0
    curr_diff = 0
    for i in s:
        if i == '0':
            curr_diff += 1
        else:
            curr_diff -= 1
        if curr_diff < 0:
            curr_diff = 0
        max_diff = max(max_diff, curr_diff)
    return max_diff; print(find_length("10111"))") == 1 ]
then
    echo "Test 66 passed"
else
    echo "Test 66 failed"
fi

if [ $(python -c "def find_length(s):
    max_diff = 0
    curr_diff = 0
    for i in s:
        if i == '0':
            curr_diff += 1
        else:
            curr_diff -= 1
        if curr_diff < 0:
            curr_diff = 0
        max_diff = max(max_diff, curr_diff)
    return max_diff; print(find_length("11011101100101"))") == 2 ]
then
    echo "Test 66 passed"
else
    echo "Test 66 failed"
fi

# Test 67
def sum_common_divisors(num1, num2):
    # Initialize sum
    sum_divisors = 0

    # Find minimum number because a common divisor cannot be larger than the smallest number
    min_num = min(num1, num2)

    # Iterate over all numbers up to min_num to find common divisors
    for i in range(1, min_num + 1):
        # If i is a common divisor, add it to the sum
        if num1 % i == 0 and num2 % i == 0:
            sum_divisors += i

    return sum_divisors

# Test the function

if [ $(python -c "def sum_common_divisors(num1, num2):
    # Initialize sum
    sum_divisors = 0

    # Find minimum number because a common divisor cannot be larger than the smallest number
    min_num = min(num1, num2)

    # Iterate over all numbers up to min_num to find common divisors
    for i in range(1, min_num + 1):
        # If i is a common divisor, add it to the sum
        if num1 % i == 0 and num2 % i == 0:
            sum_divisors += i

    return sum_divisors

# Test the function; print(sum_common_divisors(10,15))") == 6 ]
then
    echo "Test 67 passed"
else
    echo "Test 67 failed"
fi

if [ $(python -c "def sum_common_divisors(num1, num2):
    # Initialize sum
    sum_divisors = 0

    # Find minimum number because a common divisor cannot be larger than the smallest number
    min_num = min(num1, num2)

    # Iterate over all numbers up to min_num to find common divisors
    for i in range(1, min_num + 1):
        # If i is a common divisor, add it to the sum
        if num1 % i == 0 and num2 % i == 0:
            sum_divisors += i

    return sum_divisors

# Test the function; print(sum_common_divisors(100,150))") == 93 ]
then
    echo "Test 67 passed"
else
    echo "Test 67 failed"
fi

if [ $(python -c "def sum_common_divisors(num1, num2):
    # Initialize sum
    sum_divisors = 0

    # Find minimum number because a common divisor cannot be larger than the smallest number
    min_num = min(num1, num2)

    # Iterate over all numbers up to min_num to find common divisors
    for i in range(1, min_num + 1):
        # If i is a common divisor, add it to the sum
        if num1 % i == 0 and num2 % i == 0:
            sum_divisors += i

    return sum_divisors

# Test the function; print(sum_common_divisors(4,6))") == 3 ]
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
    # Get the sum of the first row
    magic_sum = sum(matrix[0])

    # Check the sum of each row
    for row in matrix:
        if sum(row) != magic_sum:
            return False

    # Check the sum of each column
    for col in zip(*matrix):
        if sum(col) != magic_sum:
            return False

    # Check the sum of the main diagonal
    if sum(matrix[i][i] for i in range(len(matrix))) != magic_sum:
        return False

    # Check the sum of the secondary diagonal
    if sum(matrix[i][len(matrix)-i-1] for i in range(len(matrix))) != magic_sum:
        return False

    return True

# Test 71
def max_occurrences(lst):
    if not lst:
        return None
    return max(set(lst), key = lst.count)

# Test 72
def reverse_vowels(s):
    vowels = 'aeiouAEIOU'
    s = list(s)
    i, j = 0, len(s) - 1
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
    s = list(s)
    i, j = 0, len(s) - 1
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
    s = list(s)
    i, j = 0, len(s) - 1
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
    s = list(s)
    i, j = 0, len(s) - 1
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
    return n * (2*n - 1)

if [ $(python -c "def hexagonal_num(n):
    return n * (2*n - 1); print(hexagonal_num(10))") == 190 ]
then
    echo "Test 75 passed"
else
    echo "Test 75 failed"
fi

if [ $(python -c "def hexagonal_num(n):
    return n * (2*n - 1); print(hexagonal_num(5))") == 45 ]
then
    echo "Test 75 passed"
else
    echo "Test 75 failed"
fi

if [ $(python -c "def hexagonal_num(n):
    return n * (2*n - 1); print(hexagonal_num(7))") == 91 ]
then
    echo "Test 75 passed"
else
    echo "Test 75 failed"
fi

# Test 76
def zero_count(arr):
    zero_count = arr.count(0)
    non_zero_count = len(arr) - zero_count
    if non_zero_count == 0:
        return 0
    else:
        return zero_count / non_zero_count

# Test 77
def is_Sum_Of_Powers_Of_Two(n):
    # Convert the number to binary and count the number of '1's
    binary = bin(n)[2:]
    count = binary.count('1')
    # If there is only one '1', it means the number is a power of 2
    # If there are more than one '1's, it means the number can be represented as the sum of non-zero powers of 2
    return count >= 1

if [ $(python -c "def is_Sum_Of_Powers_Of_Two(n):
    # Convert the number to binary and count the number of '1's
    binary = bin(n)[2:]
    count = binary.count('1')
    # If there is only one '1', it means the number is a power of 2
    # If there are more than one '1's, it means the number can be represented as the sum of non-zero powers of 2
    return count >= 1; print(is_Sum_Of_Powers_Of_Two(10))") == True ]
then
    echo "Test 77 passed"
else
    echo "Test 77 failed"
fi

if [ $(python -c "def is_Sum_Of_Powers_Of_Two(n):
    # Convert the number to binary and count the number of '1's
    binary = bin(n)[2:]
    count = binary.count('1')
    # If there is only one '1', it means the number is a power of 2
    # If there are more than one '1's, it means the number can be represented as the sum of non-zero powers of 2
    return count >= 1; print(is_Sum_Of_Powers_Of_Two(7))") == False ]
then
    echo "Test 77 passed"
else
    echo "Test 77 failed"
fi

if [ $(python -c "def is_Sum_Of_Powers_Of_Two(n):
    # Convert the number to binary and count the number of '1's
    binary = bin(n)[2:]
    count = binary.count('1')
    # If there is only one '1', it means the number is a power of 2
    # If there are more than one '1's, it means the number can be represented as the sum of non-zero powers of 2
    return count >= 1; print(is_Sum_Of_Powers_Of_Two(14))") == True ]
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
        mi = lst.index(max(lst[0:arr_len]))
        lst = lst[mi::-1] + lst[mi+1:len(lst)]
        lst = lst[arr_len-1::-1] + lst[arr_len:len(lst)]
        arr_len -= 1
    return lst

if [ $(python -c "def pancake_sort(lst):
    arr_len = len(lst)
    while arr_len > 1:
        mi = lst.index(max(lst[0:arr_len]))
        lst = lst[mi::-1] + lst[mi+1:len(lst)]
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
        mi = lst.index(max(lst[0:arr_len]))
        lst = lst[mi::-1] + lst[mi+1:len(lst)]
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
        mi = lst.index(max(lst[0:arr_len]))
        lst = lst[mi::-1] + lst[mi+1:len(lst)]
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
    return sum(isinstance(i, list) for i in tup)

if [ $(python -c "def find_lists(tup):
    return sum(isinstance(i, list) for i in tup); print(find_lists(([1, 2, 3, 4], [5, 6, 7, 8])))") == 2 ]
then
    echo "Test 82 passed"
else
    echo "Test 82 failed"
fi

if [ $(python -c "def find_lists(tup):
    return sum(isinstance(i, list) for i in tup); print(find_lists(([1, 2], [3, 4], [5, 6])) )") == 3 ]
then
    echo "Test 82 passed"
else
    echo "Test 82 failed"
fi

if [ $(python -c "def find_lists(tup):
    return sum(isinstance(i, list) for i in tup); print(find_lists(([9, 8, 7, 6, 5, 4, 3, 2, 1])))") == 1 ]
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
    def extended_gcd(aa, bb):
        lastremainder, remainder = abs(aa), abs(bb)
        x, lastx, y, lasty = 0, 1, 1, 0
        while remainder:
            lastremainder, (quotient, remainder) = remainder, divmod(lastremainder, remainder)
            x, lastx = lastx - quotient*x, x
            y, lasty = lasty - quotient*y, y
        return lastremainder, lastx * (-1 if aa < 0 else 1), lasty * (-1 if bb < 0 else 1)
    
    g, x, y = extended_gcd(a, b)
    if n % g != 0:
        return None  # No solution
    else:
        return (x * (n // g), y * (n // g))

if [ $(python -c "def find_solution(a, b, n):
    def extended_gcd(aa, bb):
        lastremainder, remainder = abs(aa), abs(bb)
        x, lastx, y, lasty = 0, 1, 1, 0
        while remainder:
            lastremainder, (quotient, remainder) = remainder, divmod(lastremainder, remainder)
            x, lastx = lastx - quotient*x, x
            y, lasty = lasty - quotient*y, y
        return lastremainder, lastx * (-1 if aa < 0 else 1), lasty * (-1 if bb < 0 else 1)
    
    g, x, y = extended_gcd(a, b)
    if n % g != 0:
        return None  # No solution
    else:
        return (x * (n // g), y * (n // g)); print(find_solution(2, 3, 7))") == (2, 1) ]
then
    echo "Test 84 passed"
else
    echo "Test 84 failed"
fi

if [ $(python -c "def find_solution(a, b, n):
    def extended_gcd(aa, bb):
        lastremainder, remainder = abs(aa), abs(bb)
        x, lastx, y, lasty = 0, 1, 1, 0
        while remainder:
            lastremainder, (quotient, remainder) = remainder, divmod(lastremainder, remainder)
            x, lastx = lastx - quotient*x, x
            y, lasty = lasty - quotient*y, y
        return lastremainder, lastx * (-1 if aa < 0 else 1), lasty * (-1 if bb < 0 else 1)
    
    g, x, y = extended_gcd(a, b)
    if n % g != 0:
        return None  # No solution
    else:
        return (x * (n // g), y * (n // g)); print(find_solution(4, 2, 7))") == None ]
then
    echo "Test 84 passed"
else
    echo "Test 84 failed"
fi

if [ $(python -c "def find_solution(a, b, n):
    def extended_gcd(aa, bb):
        lastremainder, remainder = abs(aa), abs(bb)
        x, lastx, y, lasty = 0, 1, 1, 0
        while remainder:
            lastremainder, (quotient, remainder) = remainder, divmod(lastremainder, remainder)
            x, lastx = lastx - quotient*x, x
            y, lasty = lasty - quotient*y, y
        return lastremainder, lastx * (-1 if aa < 0 else 1), lasty * (-1 if bb < 0 else 1)
    
    g, x, y = extended_gcd(a, b)
    if n % g != 0:
        return None  # No solution
    else:
        return (x * (n // g), y * (n // g)); print(find_solution(1, 13, 17))") == (4, 1) ]
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

def area_polygon(s, n):
    area = (n * s**2) / (4 * math.tan(math.pi/n))
    return area

# Test 88
def are_equivalent(n1, n2):
    def sum_of_divisors(n):
        sum = 1
        for i in range(2, int(n**0.5) + 1):
            if n % i == 0:
                if n / i == i:
                    sum += i
                else:
                    sum += i + n//i
        return sum

    return sum_of_divisors(n1) == sum_of_divisors(n2)

if [ $(python -c "def are_equivalent(n1, n2):
    def sum_of_divisors(n):
        sum = 1
        for i in range(2, int(n**0.5) + 1):
            if n % i == 0:
                if n / i == i:
                    sum += i
                else:
                    sum += i + n//i
        return sum

    return sum_of_divisors(n1) == sum_of_divisors(n2); print(are_equivalent(36, 57))") == False ]
then
    echo "Test 88 passed"
else
    echo "Test 88 failed"
fi

if [ $(python -c "def are_equivalent(n1, n2):
    def sum_of_divisors(n):
        sum = 1
        for i in range(2, int(n**0.5) + 1):
            if n % i == 0:
                if n / i == i:
                    sum += i
                else:
                    sum += i + n//i
        return sum

    return sum_of_divisors(n1) == sum_of_divisors(n2); print(are_equivalent(2, 4))") == False ]
then
    echo "Test 88 passed"
else
    echo "Test 88 failed"
fi

if [ $(python -c "def are_equivalent(n1, n2):
    def sum_of_divisors(n):
        sum = 1
        for i in range(2, int(n**0.5) + 1):
            if n % i == 0:
                if n / i == i:
                    sum += i
                else:
                    sum += i + n//i
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
def find_even_pair(lst):
    count = 0
    for i in range(len(lst)):
        for j in range(i+1, len(lst)):
            if (lst[i] ^ lst[j]) % 2 == 0:
                count += 1
    return count

if [ $(python -c "def find_even_pair(lst):
    count = 0
    for i in range(len(lst)):
        for j in range(i+1, len(lst)):
            if (lst[i] ^ lst[j]) % 2 == 0:
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
            if (lst[i] ^ lst[j]) % 2 == 0:
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
            if (lst[i] ^ lst[j]) % 2 == 0:
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
def is_majority(arr, n, elem):
    count = arr.count(elem)
    return count > n/2

if [ $(python -c "def is_majority(arr, n, elem):
    count = arr.count(elem)
    return count > n/2; print(is_majority([1, 2, 3, 3, 3, 3, 10], 7, 3))") == True ]
then
    echo "Test 97 passed"
else
    echo "Test 97 failed"
fi

if [ $(python -c "def is_majority(arr, n, elem):
    count = arr.count(elem)
    return count > n/2; print(is_majority([1, 1, 2, 4, 4, 4, 6, 6], 8, 4))") == False ]
then
    echo "Test 97 passed"
else
    echo "Test 97 failed"
fi

if [ $(python -c "def is_majority(arr, n, elem):
    count = arr.count(elem)
    return count > n/2; print(is_majority([1, 1, 1, 2, 2], 5, 1))") == True ]
then
    echo "Test 97 passed"
else
    echo "Test 97 failed"
fi

if [ $(python -c "def is_majority(arr, n, elem):
    count = arr.count(elem)
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
    # Create a number with all bits unset
    all_unset = (1 << (r - l + 1)) - 1
    # Shift the number to the correct position
    all_unset <<= l
    # Use bitwise AND to check if all bits are unset in the given range
    return (n & all_unset) == 0

if [ $(python -c "def all_Bits_Set_In_The_Given_Range(n, l, r):
    # Create a number with all bits unset
    all_unset = (1 << (r - l + 1)) - 1
    # Shift the number to the correct position
    all_unset <<= l
    # Use bitwise AND to check if all bits are unset in the given range
    return (n & all_unset) == 0; print(all_Bits_Set_In_The_Given_Range(4,1,2))") == True ]
then
    echo "Test 101 passed"
else
    echo "Test 101 failed"
fi

if [ $(python -c "def all_Bits_Set_In_The_Given_Range(n, l, r):
    # Create a number with all bits unset
    all_unset = (1 << (r - l + 1)) - 1
    # Shift the number to the correct position
    all_unset <<= l
    # Use bitwise AND to check if all bits are unset in the given range
    return (n & all_unset) == 0; print(all_Bits_Set_In_The_Given_Range(17,2,4))") == True ]
then
    echo "Test 101 passed"
else
    echo "Test 101 failed"
fi

if [ $(python -c "def all_Bits_Set_In_The_Given_Range(n, l, r):
    # Create a number with all bits unset
    all_unset = (1 << (r - l + 1)) - 1
    # Shift the number to the correct position
    all_unset <<= l
    # Use bitwise AND to check if all bits are unset in the given range
    return (n & all_unset) == 0; print(all_Bits_Set_In_The_Given_Range(39,4,6))") == False ]
then
    echo "Test 101 passed"
else
    echo "Test 101 failed"
fi

# Test 102
def re_arrange_array(arr, n):
    # Separate the array into two lists: one for negative numbers and one for positive numbers
    neg = [i for i in arr[:n] if i < 0]
    pos = [i for i in arr[:n] if i >= 0]
    # Combine the two lists and append the remaining elements of the original array
    return neg + pos + arr[n:]

if [ $(python -c "def re_arrange_array(arr, n):
    # Separate the array into two lists: one for negative numbers and one for positive numbers
    neg = [i for i in arr[:n] if i < 0]
    pos = [i for i in arr[:n] if i >= 0]
    # Combine the two lists and append the remaining elements of the original array
    return neg + pos + arr[n:]; print(re_arrange_array([-1, 2, -3, 4, 5, 6, -7, 8, 9], 9))") == [-1, -3, -7, 4, 5, 6, 2, 8, 9] ]
then
    echo "Test 102 passed"
else
    echo "Test 102 failed"
fi

if [ $(python -c "def re_arrange_array(arr, n):
    # Separate the array into two lists: one for negative numbers and one for positive numbers
    neg = [i for i in arr[:n] if i < 0]
    pos = [i for i in arr[:n] if i >= 0]
    # Combine the two lists and append the remaining elements of the original array
    return neg + pos + arr[n:]; print(re_arrange_array([12, -14, -26, 13, 15], 5))") == [-14, -26, 12, 13, 15] ]
then
    echo "Test 102 passed"
else
    echo "Test 102 failed"
fi

if [ $(python -c "def re_arrange_array(arr, n):
    # Separate the array into two lists: one for negative numbers and one for positive numbers
    neg = [i for i in arr[:n] if i < 0]
    pos = [i for i in arr[:n] if i >= 0]
    # Combine the two lists and append the remaining elements of the original array
    return neg + pos + arr[n:]; print(re_arrange_array([10, 24, 36, -42, -39, -78, 85], 7))") == [-42, -39, -78, 10, 24, 36, 85] ]
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
    # Convert the number to binary and reverse it
    binary = list(bin(n)[2:][::-1])

    # Iterate over the binary representation
    for i in range(len(binary)):
        # If the index is even, set the bit to 1
        if i % 2 == 0:
            binary[i] = '1'

    # Convert the binary representation back to an integer
    return int(''.join(binary[::-1]), 2)

if [ $(python -c "def even_bit_set_number(n):
    # Convert the number to binary and reverse it
    binary = list(bin(n)[2:][::-1])

    # Iterate over the binary representation
    for i in range(len(binary)):
        # If the index is even, set the bit to 1
        if i % 2 == 0:
            binary[i] = '1'

    # Convert the binary representation back to an integer
    return int(''.join(binary[::-1]), 2); print(even_bit_set_number(10))") == 10 ]
then
    echo "Test 107 passed"
else
    echo "Test 107 failed"
fi

if [ $(python -c "def even_bit_set_number(n):
    # Convert the number to binary and reverse it
    binary = list(bin(n)[2:][::-1])

    # Iterate over the binary representation
    for i in range(len(binary)):
        # If the index is even, set the bit to 1
        if i % 2 == 0:
            binary[i] = '1'

    # Convert the binary representation back to an integer
    return int(''.join(binary[::-1]), 2); print(even_bit_set_number(20))") == 30 ]
then
    echo "Test 107 passed"
else
    echo "Test 107 failed"
fi

if [ $(python -c "def even_bit_set_number(n):
    # Convert the number to binary and reverse it
    binary = list(bin(n)[2:][::-1])

    # Iterate over the binary representation
    for i in range(len(binary)):
        # If the index is even, set the bit to 1
        if i % 2 == 0:
            binary[i] = '1'

    # Convert the binary representation back to an integer
    return int(''.join(binary[::-1]), 2); print(even_bit_set_number(30))") == 30 ]
then
    echo "Test 107 passed"
else
    echo "Test 107 failed"
fi

# Test 108
def check_occurences(lst):
    result = {}
    for tup in lst:
        tup = tuple(sorted(tup))  # sort the tuple
        if tup in result:
            result[tup] += 1
        else:
            result[tup] = 1
    return result

if [ $(python -c "def check_occurences(lst):
    result = {}
    for tup in lst:
        tup = tuple(sorted(tup))  # sort the tuple
        if tup in result:
            result[tup] += 1
        else:
            result[tup] = 1
    return result; print(check_occurences([(3, 1), (1, 3), (2, 5), (5, 2), (6, 3)] ))") == {(1, 3): 2, (2, 5): 2, (3, 6): 1} ]
then
    echo "Test 108 passed"
else
    echo "Test 108 failed"
fi

if [ $(python -c "def check_occurences(lst):
    result = {}
    for tup in lst:
        tup = tuple(sorted(tup))  # sort the tuple
        if tup in result:
            result[tup] += 1
        else:
            result[tup] = 1
    return result; print(check_occurences([(4, 2), (2, 4), (3, 6), (6, 3), (7, 4)] ))") == {(2, 4): 2, (3, 6): 2, (4, 7): 1} ]
then
    echo "Test 108 passed"
else
    echo "Test 108 failed"
fi

if [ $(python -c "def check_occurences(lst):
    result = {}
    for tup in lst:
        tup = tuple(sorted(tup))  # sort the tuple
        if tup in result:
            result[tup] += 1
        else:
            result[tup] = 1
    return result; print(check_occurences([(13, 2), (11, 23), (12, 25), (25, 12), (16, 23)] ))") == {(2, 13): 1, (11, 23): 1, (12, 25): 2, (16, 23): 1} ]
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
    # Initialize a 2D array to store the number of sequences
    dp = [[0 for _ in range(n+1)] for _ in range(m+1)]
    
    # If the sequence length is 0, there is only one possible sequence (empty sequence)
    for i in range(m+1):
        dp[i][0] = 1
    
    # Fill the dp array
    for i in range(1, m+1):
        for j in range(1, n+1):
            dp[i][j] = dp[i//2][j-1] + dp[i-1][j]
    
    # The total number of sequences is the sum of dp[i][n] for all i
    return dp[m][n]

if [ $(python -c "def get_total_number_of_sequences(m, n):
    # Initialize a 2D array to store the number of sequences
    dp = [[0 for _ in range(n+1)] for _ in range(m+1)]
    
    # If the sequence length is 0, there is only one possible sequence (empty sequence)
    for i in range(m+1):
        dp[i][0] = 1
    
    # Fill the dp array
    for i in range(1, m+1):
        for j in range(1, n+1):
            dp[i][j] = dp[i//2][j-1] + dp[i-1][j]
    
    # The total number of sequences is the sum of dp[i][n] for all i
    return dp[m][n]; print(get_total_number_of_sequences(10, 4))") == 4 ]
then
    echo "Test 110 passed"
else
    echo "Test 110 failed"
fi

if [ $(python -c "def get_total_number_of_sequences(m, n):
    # Initialize a 2D array to store the number of sequences
    dp = [[0 for _ in range(n+1)] for _ in range(m+1)]
    
    # If the sequence length is 0, there is only one possible sequence (empty sequence)
    for i in range(m+1):
        dp[i][0] = 1
    
    # Fill the dp array
    for i in range(1, m+1):
        for j in range(1, n+1):
            dp[i][j] = dp[i//2][j-1] + dp[i-1][j]
    
    # The total number of sequences is the sum of dp[i][n] for all i
    return dp[m][n]; print(get_total_number_of_sequences(5, 2))") == 6 ]
then
    echo "Test 110 passed"
else
    echo "Test 110 failed"
fi

if [ $(python -c "def get_total_number_of_sequences(m, n):
    # Initialize a 2D array to store the number of sequences
    dp = [[0 for _ in range(n+1)] for _ in range(m+1)]
    
    # If the sequence length is 0, there is only one possible sequence (empty sequence)
    for i in range(m+1):
        dp[i][0] = 1
    
    # Fill the dp array
    for i in range(1, m+1):
        for j in range(1, n+1):
            dp[i][j] = dp[i//2][j-1] + dp[i-1][j]
    
    # The total number of sequences is the sum of dp[i][n] for all i
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
def count_charac(string):
    return len(string)

# Test 113
import math

def next_Perfect_Square(n):
    root = math.sqrt(n)
    if root.is_integer():
        return (root + 1) ** 2
    else:
        return math.ceil(root) ** 2

if [ $(python -c "import math

def next_Perfect_Square(n):
    root = math.sqrt(n)
    if root.is_integer():
        return (root + 1) ** 2
    else:
        return math.ceil(root) ** 2; print(next_Perfect_Square(35))") == 36 ]
then
    echo "Test 113 passed"
else
    echo "Test 113 failed"
fi

if [ $(python -c "import math

def next_Perfect_Square(n):
    root = math.sqrt(n)
    if root.is_integer():
        return (root + 1) ** 2
    else:
        return math.ceil(root) ** 2; print(next_Perfect_Square(6))") == 9 ]
then
    echo "Test 113 passed"
else
    echo "Test 113 failed"
fi

if [ $(python -c "import math

def next_Perfect_Square(n):
    root = math.sqrt(n)
    if root.is_integer():
        return (root + 1) ** 2
    else:
        return math.ceil(root) ** 2; print(next_Perfect_Square(9))") == 16 ]
then
    echo "Test 113 passed"
else
    echo "Test 113 failed"
fi

# Test 114
def max_sum(arr):
    n = len(arr)

    # Initialize two arrays for storing maximum sum of increasing and decreasing subsequences
    inc = [0] * n
    dec = [0] * n

    # Initialize first value of increasing and decreasing array
    inc[0] = arr[0]
    dec[n-1] = arr[n-1]

    # Fill increasing array
    for i in range(1, n):
        inc[i] = max(inc[j] + arr[i] if (arr[i] > arr[j]) else arr[i] for j in range(i))

    # Fill decreasing array
    for i in range(n-2, -1, -1):
        dec[i] = max(dec[j] + arr[i] if (arr[i] > arr[j]) else arr[i] for j in range(i, n))

    # Find maximum value of (inc[i] + dec[i] - arr[i])
    return max(inc[i] + dec[i] - arr[i] for i in range(n))

if [ $(python -c "def max_sum(arr):
    n = len(arr)

    # Initialize two arrays for storing maximum sum of increasing and decreasing subsequences
    inc = [0] * n
    dec = [0] * n

    # Initialize first value of increasing and decreasing array
    inc[0] = arr[0]
    dec[n-1] = arr[n-1]

    # Fill increasing array
    for i in range(1, n):
        inc[i] = max(inc[j] + arr[i] if (arr[i] > arr[j]) else arr[i] for j in range(i))

    # Fill decreasing array
    for i in range(n-2, -1, -1):
        dec[i] = max(dec[j] + arr[i] if (arr[i] > arr[j]) else arr[i] for j in range(i, n))

    # Find maximum value of (inc[i] + dec[i] - arr[i])
    return max(inc[i] + dec[i] - arr[i] for i in range(n)); print(max_sum([1, 15, 51, 45, 33, 100, 12, 18, 9]))") == 194 ]
then
    echo "Test 114 passed"
else
    echo "Test 114 failed"
fi

if [ $(python -c "def max_sum(arr):
    n = len(arr)

    # Initialize two arrays for storing maximum sum of increasing and decreasing subsequences
    inc = [0] * n
    dec = [0] * n

    # Initialize first value of increasing and decreasing array
    inc[0] = arr[0]
    dec[n-1] = arr[n-1]

    # Fill increasing array
    for i in range(1, n):
        inc[i] = max(inc[j] + arr[i] if (arr[i] > arr[j]) else arr[i] for j in range(i))

    # Fill decreasing array
    for i in range(n-2, -1, -1):
        dec[i] = max(dec[j] + arr[i] if (arr[i] > arr[j]) else arr[i] for j in range(i, n))

    # Find maximum value of (inc[i] + dec[i] - arr[i])
    return max(inc[i] + dec[i] - arr[i] for i in range(n)); print(max_sum([80, 60, 30, 40, 20, 10]))") == 210 ]
then
    echo "Test 114 passed"
else
    echo "Test 114 failed"
fi

if [ $(python -c "def max_sum(arr):
    n = len(arr)

    # Initialize two arrays for storing maximum sum of increasing and decreasing subsequences
    inc = [0] * n
    dec = [0] * n

    # Initialize first value of increasing and decreasing array
    inc[0] = arr[0]
    dec[n-1] = arr[n-1]

    # Fill increasing array
    for i in range(1, n):
        inc[i] = max(inc[j] + arr[i] if (arr[i] > arr[j]) else arr[i] for j in range(i))

    # Fill decreasing array
    for i in range(n-2, -1, -1):
        dec[i] = max(dec[j] + arr[i] if (arr[i] > arr[j]) else arr[i] for j in range(i, n))

    # Find maximum value of (inc[i] + dec[i] - arr[i])
    return max(inc[i] + dec[i] - arr[i] for i in range(n)); print(max_sum([2, 3 ,14, 16, 21, 23, 29, 30]))") == 138 ]
then
    echo "Test 114 passed"
else
    echo "Test 114 failed"
fi

# Test 115
def babylonian_squareroot(n):
    if n < 0:
        raise ValueError("Cannot compute the square root of a negative number")
    elif n == 0:
        return 0
    else:
        x = n
        y = (x + 1) / 2
        while abs(y - x) > 0.001:
            x = y
            y = (x + n / x) / 2
        return y

# Test 116
def lps(s):
    n = len(s)
    # Create a table to store results of subproblems
    dp = [[0 for x in range(n)] for x in range(n)]
    # Strings of length 1 are palindrome of length 1
    for i in range(n):
        dp[i][i] = 1
    # Build the table. Note that the lower diagonal values of table are
    # useless and not filled in the process.
    for cl in range(2, n+1):
        for i in range(n - cl + 1):
            j = i + cl - 1
            if s[i] == s[j] and cl == 2:
                dp[i][j] = 2
            elif s[i] == s[j]:
                dp[i][j] = dp[i+1][j-1] + 2
            else:
                dp[i][j] = max(dp[i][j-1], dp[i+1][j])
    # length of longest palindromic subsequence
    return dp[0][n-1]

if [ $(python -c "def lps(s):
    n = len(s)
    # Create a table to store results of subproblems
    dp = [[0 for x in range(n)] for x in range(n)]
    # Strings of length 1 are palindrome of length 1
    for i in range(n):
        dp[i][i] = 1
    # Build the table. Note that the lower diagonal values of table are
    # useless and not filled in the process.
    for cl in range(2, n+1):
        for i in range(n - cl + 1):
            j = i + cl - 1
            if s[i] == s[j] and cl == 2:
                dp[i][j] = 2
            elif s[i] == s[j]:
                dp[i][j] = dp[i+1][j-1] + 2
            else:
                dp[i][j] = max(dp[i][j-1], dp[i+1][j])
    # length of longest palindromic subsequence
    return dp[0][n-1]; print(lps("TENS FOR TENS"))") == 5 ]
then
    echo "Test 116 passed"
else
    echo "Test 116 failed"
fi

if [ $(python -c "def lps(s):
    n = len(s)
    # Create a table to store results of subproblems
    dp = [[0 for x in range(n)] for x in range(n)]
    # Strings of length 1 are palindrome of length 1
    for i in range(n):
        dp[i][i] = 1
    # Build the table. Note that the lower diagonal values of table are
    # useless and not filled in the process.
    for cl in range(2, n+1):
        for i in range(n - cl + 1):
            j = i + cl - 1
            if s[i] == s[j] and cl == 2:
                dp[i][j] = 2
            elif s[i] == s[j]:
                dp[i][j] = dp[i+1][j-1] + 2
            else:
                dp[i][j] = max(dp[i][j-1], dp[i+1][j])
    # length of longest palindromic subsequence
    return dp[0][n-1]; print(lps("CARDIO FOR CARDS"))") == 7 ]
then
    echo "Test 116 passed"
else
    echo "Test 116 failed"
fi

if [ $(python -c "def lps(s):
    n = len(s)
    # Create a table to store results of subproblems
    dp = [[0 for x in range(n)] for x in range(n)]
    # Strings of length 1 are palindrome of length 1
    for i in range(n):
        dp[i][i] = 1
    # Build the table. Note that the lower diagonal values of table are
    # useless and not filled in the process.
    for cl in range(2, n+1):
        for i in range(n - cl + 1):
            j = i + cl - 1
            if s[i] == s[j] and cl == 2:
                dp[i][j] = 2
            elif s[i] == s[j]:
                dp[i][j] = dp[i+1][j-1] + 2
            else:
                dp[i][j] = max(dp[i][j-1], dp[i+1][j])
    # length of longest palindromic subsequence
    return dp[0][n-1]; print(lps("PART OF THE JOURNEY IS PART"))") == 9 ]
then
    echo "Test 116 passed"
else
    echo "Test 116 failed"
fi

# Test 117
def harmonic_sum(n):
    if n < 2:
        return 0
    else:
        return sum(1.0/i for i in range(1, n))

# Test 118
def intersection_array(arr1, arr2):
    return [value for value in arr1 if value in arr2]

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
def insert_element(lst, elem):
    result = []
    for i in lst:
        result.append(elem)
        result.append(i)
    return result

# Test 121
import cmath

def convert(complex_num):
    # Convert to polar coordinates
    r, theta = cmath.polar(complex_num)
    return (r, theta)

# Test cases

if [ $(python -c "import cmath

def convert(complex_num):
    # Convert to polar coordinates
    r, theta = cmath.polar(complex_num)
    return (r, theta)

# Test cases; print(convert(1))") == (1.0, 0.0) ]
then
    echo "Test 121 passed"
else
    echo "Test 121 failed"
fi

if [ $(python -c "import cmath

def convert(complex_num):
    # Convert to polar coordinates
    r, theta = cmath.polar(complex_num)
    return (r, theta)

# Test cases; print(convert(4))") == (4.0, 0.0) ]
then
    echo "Test 121 passed"
else
    echo "Test 121 failed"
fi

if [ $(python -c "import cmath

def convert(complex_num):
    # Convert to polar coordinates
    r, theta = cmath.polar(complex_num)
    return (r, theta)

# Test cases; print(convert(5))") == (5.0, 0.0) ]
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
    return list(itertools.combinations_with_replacement(lst, n))

# Test 124
def count_Primes_nums(n):
    def is_prime(num):
        if num < 2:
            return False
        for i in range(2, int(num**0.5) + 1):
            if num % i == 0:
                return False
        return True

    count = 0
    for i in range(2, n):
        if is_prime(i):
            count += 1
    return count

if [ $(python -c "def count_Primes_nums(n):
    def is_prime(num):
        if num < 2:
            return False
        for i in range(2, int(num**0.5) + 1):
            if num % i == 0:
                return False
        return True

    count = 0
    for i in range(2, n):
        if is_prime(i):
            count += 1
    return count; print(count_Primes_nums(5))") == 2 ]
then
    echo "Test 124 passed"
else
    echo "Test 124 failed"
fi

if [ $(python -c "def count_Primes_nums(n):
    def is_prime(num):
        if num < 2:
            return False
        for i in range(2, int(num**0.5) + 1):
            if num % i == 0:
                return False
        return True

    count = 0
    for i in range(2, n):
        if is_prime(i):
            count += 1
    return count; print(count_Primes_nums(10))") == 4 ]
then
    echo "Test 124 passed"
else
    echo "Test 124 failed"
fi

if [ $(python -c "def count_Primes_nums(n):
    def is_prime(num):
        if num < 2:
            return False
        for i in range(2, int(num**0.5) + 1):
            if num % i == 0:
                return False
        return True

    count = 0
    for i in range(2, n):
        if is_prime(i):
            count += 1
    return count; print(count_Primes_nums(100))") == 25 ]
then
    echo "Test 124 passed"
else
    echo "Test 124 failed"
fi

# Test 125
def swap_numbers(num1, num2):
    return (num2, num1)

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
def newman_shanks_williams(n):
    if n == 0:
        return 1
    elif n == 1:
        return 1
    else:
        a, b = 1, 1
        for _ in range(2, n+1):
            a, b = b, 2*b + a
        return b

if [ $(python -c "def newman_shanks_williams(n):
    if n == 0:
        return 1
    elif n == 1:
        return 1
    else:
        a, b = 1, 1
        for _ in range(2, n+1):
            a, b = b, 2*b + a
        return b; print(newman_shanks_williams(3))") == 7 ]
then
    echo "Test 127 passed"
else
    echo "Test 127 failed"
fi

if [ $(python -c "def newman_shanks_williams(n):
    if n == 0:
        return 1
    elif n == 1:
        return 1
    else:
        a, b = 1, 1
        for _ in range(2, n+1):
            a, b = b, 2*b + a
        return b; print(newman_shanks_williams(4))") == 17 ]
then
    echo "Test 127 passed"
else
    echo "Test 127 failed"
fi

if [ $(python -c "def newman_shanks_williams(n):
    if n == 0:
        return 1
    elif n == 1:
        return 1
    else:
        a, b = 1, 1
        for _ in range(2, n+1):
            a, b = b, 2*b + a
        return b; print(newman_shanks_williams(5))") == 41 ]
then
    echo "Test 127 passed"
else
    echo "Test 127 failed"
fi

# Test 128
def division_elements(t1, t2):
    return tuple(a/b for a, b in zip(t1, t2))

if [ $(python -c "def division_elements(t1, t2):
    return tuple(a/b for a, b in zip(t1, t2)); print(division_elements((10, 4, 6, 9),(5, 2, 3, 3)))") == (2, 2, 2, 3) ]
then
    echo "Test 128 passed"
else
    echo "Test 128 failed"
fi

if [ $(python -c "def division_elements(t1, t2):
    return tuple(a/b for a, b in zip(t1, t2)); print(division_elements((12, 6, 8, 16),(6, 3, 4, 4)))") == (2, 2, 2, 4) ]
then
    echo "Test 128 passed"
else
    echo "Test 128 failed"
fi

if [ $(python -c "def division_elements(t1, t2):
    return tuple(a/b for a, b in zip(t1, t2)); print(division_elements((20, 14, 36, 18),(5, 7, 6, 9)))") == (4, 2, 6, 2) ]
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
    if human_years < 0:
        return None
    elif human_years == 1:
        return 15
    elif human_years == 2:
        return 24
    else:
        return 24 + (human_years - 2) * 5

# Test 131
def list_split(lst, n):
    return [lst[i::n] for i in range(n)]

# Test 132
def lateralsurface_cube(side_length):
    return 4 * side_length ** 2

# Test 133
def square_Sum(n):
    return sum(i**2 for i in range(1, 2*n, 2))

if [ $(python -c "def square_Sum(n):
    return sum(i**2 for i in range(1, 2*n, 2)); print(square_Sum(2))") == 10 ]
then
    echo "Test 133 passed"
else
    echo "Test 133 failed"
fi

if [ $(python -c "def square_Sum(n):
    return sum(i**2 for i in range(1, 2*n, 2)); print(square_Sum(3))") == 35 ]
then
    echo "Test 133 passed"
else
    echo "Test 133 failed"
fi

if [ $(python -c "def square_Sum(n):
    return sum(i**2 for i in range(1, 2*n, 2)); print(square_Sum(4))") == 84 ]
then
    echo "Test 133 passed"
else
    echo "Test 133 failed"
fi

# Test 134
def find_star_num(n):
    return 6*n*(n-1) + 1

if [ $(python -c "def find_star_num(n):
    return 6*n*(n-1) + 1; print(find_star_num(3))") == 37 ]
then
    echo "Test 134 passed"
else
    echo "Test 134 failed"
fi

if [ $(python -c "def find_star_num(n):
    return 6*n*(n-1) + 1; print(find_star_num(4))") == 73 ]
then
    echo "Test 134 passed"
else
    echo "Test 134 failed"
fi

if [ $(python -c "def find_star_num(n):
    return 6*n*(n-1) + 1; print(find_star_num(5))") == 121 ]
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
    return sum(lst[i] for i in range(len(lst)) if i % 2 == 0 and lst[i] % 2 == 0)

if [ $(python -c "def sum_even_and_even_index(lst):
    return sum(lst[i] for i in range(len(lst)) if i % 2 == 0 and lst[i] % 2 == 0); print(sum_even_and_even_index([5, 6, 12, 1, 18, 8]))") == 30 ]
then
    echo "Test 136 passed"
else
    echo "Test 136 failed"
fi

if [ $(python -c "def sum_even_and_even_index(lst):
    return sum(lst[i] for i in range(len(lst)) if i % 2 == 0 and lst[i] % 2 == 0); print(sum_even_and_even_index([3, 20, 17, 9, 2, 10, 18, 13, 6, 18]))") == 26 ]
then
    echo "Test 136 passed"
else
    echo "Test 136 failed"
fi

if [ $(python -c "def sum_even_and_even_index(lst):
    return sum(lst[i] for i in range(len(lst)) if i % 2 == 0 and lst[i] % 2 == 0); print(sum_even_and_even_index([5, 6, 12, 1]))") == 12 ]
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
    return [t[-1] for t in lst]

if [ $(python -c "def rear_extract(lst):
    return [t[-1] for t in lst]; print(rear_extract([(1, 'Rash', 21), (2, 'Varsha', 20), (3, 'Kil', 19)]))") == [21, 20, 19] ]
then
    echo "Test 138 passed"
else
    echo "Test 138 failed"
fi

if [ $(python -c "def rear_extract(lst):
    return [t[-1] for t in lst]; print(rear_extract([(1, 'Sai', 36), (2, 'Ayesha', 25), (3, 'Salman', 45)]))") == [36, 25, 45] ]
then
    echo "Test 138 passed"
else
    echo "Test 138 failed"
fi

if [ $(python -c "def rear_extract(lst):
    return [t[-1] for t in lst]; print(rear_extract([(1, 'Sudeep', 14), (2, 'Vandana', 36), (3, 'Dawood', 56)]))") == [14, 36, 56] ]
then
    echo "Test 138 passed"
else
    echo "Test 138 failed"
fi

# Test 139
def substract_elements(t1, t2):
    return tuple(a - b for a, b in zip(t1, t2))

if [ $(python -c "def substract_elements(t1, t2):
    return tuple(a - b for a, b in zip(t1, t2)); print(substract_elements((10, 4, 5), (2, 5, 18)))") == (8, -1, -13) ]
then
    echo "Test 139 passed"
else
    echo "Test 139 failed"
fi

if [ $(python -c "def substract_elements(t1, t2):
    return tuple(a - b for a, b in zip(t1, t2)); print(substract_elements((11, 2, 3), (24, 45 ,16)))") == (-13, -43, -13) ]
then
    echo "Test 139 passed"
else
    echo "Test 139 failed"
fi

if [ $(python -c "def substract_elements(t1, t2):
    return tuple(a - b for a, b in zip(t1, t2)); print(substract_elements((7, 18, 9), (10, 11, 12)))") == (-3, 7, -3) ]
then
    echo "Test 139 passed"
else
    echo "Test 139 failed"
fi

# Test 140
import math

def even_binomial_Coeff_Sum(n):
    sum = 0
    for i in range(0, n+1, 2):
        sum += math.factorial(n) / (math.factorial(i) * math.factorial(n-i))
    return int(sum)

if [ $(python -c "import math

def even_binomial_Coeff_Sum(n):
    sum = 0
    for i in range(0, n+1, 2):
        sum += math.factorial(n) / (math.factorial(i) * math.factorial(n-i))
    return int(sum); print(even_binomial_Coeff_Sum(4))") == 8 ]
then
    echo "Test 140 passed"
else
    echo "Test 140 failed"
fi

if [ $(python -c "import math

def even_binomial_Coeff_Sum(n):
    sum = 0
    for i in range(0, n+1, 2):
        sum += math.factorial(n) / (math.factorial(i) * math.factorial(n-i))
    return int(sum); print(even_binomial_Coeff_Sum(6))") == 32 ]
then
    echo "Test 140 passed"
else
    echo "Test 140 failed"
fi

if [ $(python -c "import math

def even_binomial_Coeff_Sum(n):
    sum = 0
    for i in range(0, n+1, 2):
        sum += math.factorial(n) / (math.factorial(i) * math.factorial(n-i))
    return int(sum); print(even_binomial_Coeff_Sum(2))") == 2 ]
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
def dict_filter(d, n):
    return {k: v for k, v in d.items() if v >= n}

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
    # Convert the integer to a string to be able to iterate over its digits
    n_str = str(n)
    
    # Create a dictionary to store the frequency of each digit
    freq = {str(i): 0 for i in range(10)}
    
    # Iterate over the digits and update their frequency
    for digit in n_str:
        freq[digit] += 1
    
    # Check if the frequency of each digit is less than or equal to the digit itself
    for digit, count in freq.items():
        if count > int(digit):
            return False
    
    return True

if [ $(python -c "def validate(n):
    # Convert the integer to a string to be able to iterate over its digits
    n_str = str(n)
    
    # Create a dictionary to store the frequency of each digit
    freq = {str(i): 0 for i in range(10)}
    
    # Iterate over the digits and update their frequency
    for digit in n_str:
        freq[digit] += 1
    
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
    freq = {str(i): 0 for i in range(10)}
    
    # Iterate over the digits and update their frequency
    for digit in n_str:
        freq[digit] += 1
    
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
    freq = {str(i): 0 for i in range(10)}
    
    # Iterate over the digits and update their frequency
    for digit in n_str:
        freq[digit] += 1
    
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
    pattern = 'ab{2,3}'
    if re.search(pattern, text):
        return True
    else:
        return False

# Test 151
def max_sub_array_sum_repeated(arr, n, k):
    # Initialize result
    max_sum = float('-inf')

    # Compute sum of all elements
    total_sum = sum(arr)

    # Compute sum of first k-1 prefixes
    prefix_sum = 0
    for i in range(n*(k-1)):
        prefix_sum += arr[i%n]
        max_sum = max(max_sum, prefix_sum)

    # Compute sum of first k-1 suffixes
    suffix_sum = 0
    for i in range(n-1, -1, -1):
        suffix_sum += arr[i%n]
        max_sum = max(max_sum, suffix_sum)

    # Compute maximum subarray sum for one array
    max_kadane = kadane(arr, n)

    # Compute maximum subarray sum for k arrays
    if k > 1:
        max_sum = max(max_sum, max_kadane)
        max_sum = max(max_sum, prefix_sum + total_sum*(k-2) + suffix_sum)

    return max_sum

def kadane(arr, n):
    # Initialize current max and global max
    curr_max = arr[0]
    global_max = arr[0]

    # Iterate over the array
    for i in range(1, n):
        # Update current max
        curr_max = max(arr[i], curr_max + arr[i])
        # Update global max
        global_max = max(global_max, curr_max)

    return global_max

if [ $(python -c "def max_sub_array_sum_repeated(arr, n, k):
    # Initialize result
    max_sum = float('-inf')

    # Compute sum of all elements
    total_sum = sum(arr)

    # Compute sum of first k-1 prefixes
    prefix_sum = 0
    for i in range(n*(k-1)):
        prefix_sum += arr[i%n]
        max_sum = max(max_sum, prefix_sum)

    # Compute sum of first k-1 suffixes
    suffix_sum = 0
    for i in range(n-1, -1, -1):
        suffix_sum += arr[i%n]
        max_sum = max(max_sum, suffix_sum)

    # Compute maximum subarray sum for one array
    max_kadane = kadane(arr, n)

    # Compute maximum subarray sum for k arrays
    if k > 1:
        max_sum = max(max_sum, max_kadane)
        max_sum = max(max_sum, prefix_sum + total_sum*(k-2) + suffix_sum)

    return max_sum

def kadane(arr, n):
    # Initialize current max and global max
    curr_max = arr[0]
    global_max = arr[0]

    # Iterate over the array
    for i in range(1, n):
        # Update current max
        curr_max = max(arr[i], curr_max + arr[i])
        # Update global max
        global_max = max(global_max, curr_max)

    return global_max; print(max_sub_array_sum_repeated([10, 20, -30, -1], 4, 3))") == 30 ]
then
    echo "Test 151 passed"
else
    echo "Test 151 failed"
fi

if [ $(python -c "def max_sub_array_sum_repeated(arr, n, k):
    # Initialize result
    max_sum = float('-inf')

    # Compute sum of all elements
    total_sum = sum(arr)

    # Compute sum of first k-1 prefixes
    prefix_sum = 0
    for i in range(n*(k-1)):
        prefix_sum += arr[i%n]
        max_sum = max(max_sum, prefix_sum)

    # Compute sum of first k-1 suffixes
    suffix_sum = 0
    for i in range(n-1, -1, -1):
        suffix_sum += arr[i%n]
        max_sum = max(max_sum, suffix_sum)

    # Compute maximum subarray sum for one array
    max_kadane = kadane(arr, n)

    # Compute maximum subarray sum for k arrays
    if k > 1:
        max_sum = max(max_sum, max_kadane)
        max_sum = max(max_sum, prefix_sum + total_sum*(k-2) + suffix_sum)

    return max_sum

def kadane(arr, n):
    # Initialize current max and global max
    curr_max = arr[0]
    global_max = arr[0]

    # Iterate over the array
    for i in range(1, n):
        # Update current max
        curr_max = max(arr[i], curr_max + arr[i])
        # Update global max
        global_max = max(global_max, curr_max)

    return global_max; print(max_sub_array_sum_repeated([-1, 10, 20], 3, 2))") == 59 ]
then
    echo "Test 151 passed"
else
    echo "Test 151 failed"
fi

if [ $(python -c "def max_sub_array_sum_repeated(arr, n, k):
    # Initialize result
    max_sum = float('-inf')

    # Compute sum of all elements
    total_sum = sum(arr)

    # Compute sum of first k-1 prefixes
    prefix_sum = 0
    for i in range(n*(k-1)):
        prefix_sum += arr[i%n]
        max_sum = max(max_sum, prefix_sum)

    # Compute sum of first k-1 suffixes
    suffix_sum = 0
    for i in range(n-1, -1, -1):
        suffix_sum += arr[i%n]
        max_sum = max(max_sum, suffix_sum)

    # Compute maximum subarray sum for one array
    max_kadane = kadane(arr, n)

    # Compute maximum subarray sum for k arrays
    if k > 1:
        max_sum = max(max_sum, max_kadane)
        max_sum = max(max_sum, prefix_sum + total_sum*(k-2) + suffix_sum)

    return max_sum

def kadane(arr, n):
    # Initialize current max and global max
    curr_max = arr[0]
    global_max = arr[0]

    # Iterate over the array
    for i in range(1, n):
        # Update current max
        curr_max = max(arr[i], curr_max + arr[i])
        # Update global max
        global_max = max(global_max, curr_max)

    return global_max; print(max_sub_array_sum_repeated([-1, -2, -3], 3, 3))") == -1 ]
then
    echo "Test 151 passed"
else
    echo "Test 151 failed"
fi

# Test 152
def square_Sum(n):
    sum = 0
    for i in range(2, 2*n+1, 2):
        sum += i**2
    return sum

if [ $(python -c "def square_Sum(n):
    sum = 0
    for i in range(2, 2*n+1, 2):
        sum += i**2
    return sum; print(square_Sum(2))") == 20 ]
then
    echo "Test 152 passed"
else
    echo "Test 152 failed"
fi

if [ $(python -c "def square_Sum(n):
    sum = 0
    for i in range(2, 2*n+1, 2):
        sum += i**2
    return sum; print(square_Sum(3))") == 56 ]
then
    echo "Test 152 passed"
else
    echo "Test 152 failed"
fi

if [ $(python -c "def square_Sum(n):
    sum = 0
    for i in range(2, 2*n+1, 2):
        sum += i**2
    return sum; print(square_Sum(4))") == 120 ]
then
    echo "Test 152 passed"
else
    echo "Test 152 failed"
fi

# Test 153
def max_length(lists):
    max_len = max(len(lst) for lst in lists)
    max_list = next(lst for lst in lists if len(lst) == max_len)
    return max_len, max_list

# Test 154
def count_no_of_ways(n, k):
    if n == 1:
        return k
    if n == 2:
        return k*k
    same, diff = k, k*(k-1)
    for _ in range(3, n+1):
        same, diff = diff, (same + diff) * (k-1)
    return same + diff

if [ $(python -c "def count_no_of_ways(n, k):
    if n == 1:
        return k
    if n == 2:
        return k*k
    same, diff = k, k*(k-1)
    for _ in range(3, n+1):
        same, diff = diff, (same + diff) * (k-1)
    return same + diff; print(count_no_of_ways(2, 4))") == 16 ]
then
    echo "Test 154 passed"
else
    echo "Test 154 failed"
fi

if [ $(python -c "def count_no_of_ways(n, k):
    if n == 1:
        return k
    if n == 2:
        return k*k
    same, diff = k, k*(k-1)
    for _ in range(3, n+1):
        same, diff = diff, (same + diff) * (k-1)
    return same + diff; print(count_no_of_ways(3, 2))") == 6 ]
then
    echo "Test 154 passed"
else
    echo "Test 154 failed"
fi

if [ $(python -c "def count_no_of_ways(n, k):
    if n == 1:
        return k
    if n == 2:
        return k*k
    same, diff = k, k*(k-1)
    for _ in range(3, n+1):
        same, diff = diff, (same + diff) * (k-1)
    return same + diff; print(count_no_of_ways(4, 4))") == 228 ]
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
    # Filter out non-numeric values from the list
    numeric_values = [x for x in lst if isinstance(x, (int, float))]
    
    # Return the maximum value
    return max(numeric_values)

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

# Test the function

if [ $(python -c "def get_Inv_Count(arr):
    inv_count = 0
    for i in range(len(arr)):
        for j in range(i+1, len(arr)):
            if (arr[i] > arr[j]):
                inv_count += 1
    return inv_count

# Test the function; print(get_Inv_Count([1,20,6,4,5]))") == 5 ]
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
    return inv_count

# Test the function; print(get_Inv_Count([1,2,1]))") == 1 ]
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
    return inv_count

# Test the function; print(get_Inv_Count([1,2,5,6,1]))") == 3 ]
then
    echo "Test 159 passed"
else
    echo "Test 159 failed"
fi

# Test 160
def flatten_list(nested_list):
    flat_list = []
    for element in nested_list:
        if isinstance(element, list):
            flat_list.extend(flatten_list(element))
        else:
            flat_list.append(element)
    return flat_list

# Test 161
def max_aggregate(lst):
    # Create a dictionary to store the sum of scores for each person
    dic = {}
    for name, score in lst:
        if name in dic:
            dic[name] += score
        else:
            dic[name] = score

    # Find the person with the maximum aggregate score
    max_name = max(dic, key=dic.get)
    return max_name, dic[max_name]

# Test 162
def count_binary_seq(n):
    dp = [[0 for _ in range(n+1)] for _ in range(2*n+1)]
    for i in range(1, 2*n+1):
        for j in range(max(0, i-n), min(i, n)+1):
            if i == 1 and j == 0:
                dp[i][j] = 1
            elif i == 1 and j == 1:
                dp[i][j] = 1
            elif j == 0:
                dp[i][j] = dp[i-1][j] + dp[i-1][j+1]
            elif j == i:
                dp[i][j] = dp[i-1][j-1]
            else:
                dp[i][j] = dp[i-1][j-1] + dp[i-1][j+1]
    return dp[2*n][n]

# Test 163
def dict_depth(d):
    if isinstance(d, dict):
        return 1 + (max(map(dict_depth, d.values())) if d else 0)
    return 0

# Test 164
def find_Element(arr, rotations, index, num_rotations):
    for i in range(num_rotations):
        rotation = rotations[i]
        start, end = rotation
        arr = arr[:start] + arr[start:end+1][::-1] + arr[end+1:]
    return arr[index]

if [ $(python -c "def find_Element(arr, rotations, index, num_rotations):
    for i in range(num_rotations):
        rotation = rotations[i]
        start, end = rotation
        arr = arr[:start] + arr[start:end+1][::-1] + arr[end+1:]
    return arr[index]; print(find_Element([1,2,3,4,5],[[0,2],[0,3]],2,1))") == 3 ]
then
    echo "Test 164 passed"
else
    echo "Test 164 failed"
fi

if [ $(python -c "def find_Element(arr, rotations, index, num_rotations):
    for i in range(num_rotations):
        rotation = rotations[i]
        start, end = rotation
        arr = arr[:start] + arr[start:end+1][::-1] + arr[end+1:]
    return arr[index]; print(find_Element([1,2,3,4],[[0,1],[0,2]],1,2))") == 3 ]
then
    echo "Test 164 passed"
else
    echo "Test 164 failed"
fi

if [ $(python -c "def find_Element(arr, rotations, index, num_rotations):
    for i in range(num_rotations):
        rotation = rotations[i]
        start, end = rotation
        arr = arr[:start] + arr[start:end+1][::-1] + arr[end+1:]
    return arr[index]; print(find_Element([1,2,3,4,5,6],[[0,1],[0,2]],1,1))") == 1 ]
then
    echo "Test 164 passed"
else
    echo "Test 164 failed"
fi

# Test 165
def start_withp(lst):
    p_words = []
    for phrase in lst:
        words = phrase.split()
        for word in words:
            if word[0].lower() == 'p':
                p_words.append(word)
            if len(p_words) == 2:
                return tuple(p_words)
    return None

# Test 166
def max_sum_increasing_subseq(arr, n, i, k):
    # Initialize the maximum sum increasing subsequence array
    msis = [0 for x in range(n)]
    # Set the value of the first element of the array as the first element of the original array
    msis[0] = arr[0]

    # Compute maximum sum values in bottom up manner
    for j in range(1, i+1):
        msis[j] = arr[j]
        for l in range(j):
            if arr[j] > arr[l] and msis[j] < msis[l] + arr[j]:
                msis[j] = msis[l] + arr[j]

    # Include the kth element in the maximum sum
    msis[k] = max(msis[k], msis[i] + arr[k])

    # Pick maximum of all msis values and return
    return max(msis)

if [ $(python -c "def max_sum_increasing_subseq(arr, n, i, k):
    # Initialize the maximum sum increasing subsequence array
    msis = [0 for x in range(n)]
    # Set the value of the first element of the array as the first element of the original array
    msis[0] = arr[0]

    # Compute maximum sum values in bottom up manner
    for j in range(1, i+1):
        msis[j] = arr[j]
        for l in range(j):
            if arr[j] > arr[l] and msis[j] < msis[l] + arr[j]:
                msis[j] = msis[l] + arr[j]

    # Include the kth element in the maximum sum
    msis[k] = max(msis[k], msis[i] + arr[k])

    # Pick maximum of all msis values and return
    return max(msis); print(max_sum_increasing_subseq([1, 101, 2, 3, 100, 4, 5 ], 7, 4, 6))") == 11 ]
then
    echo "Test 166 passed"
else
    echo "Test 166 failed"
fi

if [ $(python -c "def max_sum_increasing_subseq(arr, n, i, k):
    # Initialize the maximum sum increasing subsequence array
    msis = [0 for x in range(n)]
    # Set the value of the first element of the array as the first element of the original array
    msis[0] = arr[0]

    # Compute maximum sum values in bottom up manner
    for j in range(1, i+1):
        msis[j] = arr[j]
        for l in range(j):
            if arr[j] > arr[l] and msis[j] < msis[l] + arr[j]:
                msis[j] = msis[l] + arr[j]

    # Include the kth element in the maximum sum
    msis[k] = max(msis[k], msis[i] + arr[k])

    # Pick maximum of all msis values and return
    return max(msis); print(max_sum_increasing_subseq([1, 101, 2, 3, 100, 4, 5 ], 7, 2, 5))") == 7 ]
then
    echo "Test 166 passed"
else
    echo "Test 166 failed"
fi

if [ $(python -c "def max_sum_increasing_subseq(arr, n, i, k):
    # Initialize the maximum sum increasing subsequence array
    msis = [0 for x in range(n)]
    # Set the value of the first element of the array as the first element of the original array
    msis[0] = arr[0]

    # Compute maximum sum values in bottom up manner
    for j in range(1, i+1):
        msis[j] = arr[j]
        for l in range(j):
            if arr[j] > arr[l] and msis[j] < msis[l] + arr[j]:
                msis[j] = msis[l] + arr[j]

    # Include the kth element in the maximum sum
    msis[k] = max(msis[k], msis[i] + arr[k])

    # Pick maximum of all msis values and return
    return max(msis); print(max_sum_increasing_subseq([11, 15, 19, 21, 26, 28, 31], 7, 2, 4))") == 71 ]
then
    echo "Test 166 passed"
else
    echo "Test 166 failed"
fi

# Test 167
def colon_tuplex(tuplex, index, value):
    listx = list(tuplex)
    listx[index] = [value]
    return tuple(listx)

# Test 168
def large_product(list1, list2, n):
    # Create a list of all possible products
    products = [i*j for i in list1 for j in list2]
    # Sort the list in descending order
    products.sort(reverse=True)
    # Return the first n elements
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
    # find the position of left most unset bit
    pos = 1
    while n & (1 << pos):
        pos += 1

    # set the bit at pos
    n |= (1 << pos)

    return n

if [ $(python -c "def set_left_most_unset_bit(n):
    # find the position of left most unset bit
    pos = 1
    while n & (1 << pos):
        pos += 1

    # set the bit at pos
    n |= (1 << pos)

    return n; print(set_left_most_unset_bit(10))") == 14 ]
then
    echo "Test 171 passed"
else
    echo "Test 171 failed"
fi

if [ $(python -c "def set_left_most_unset_bit(n):
    # find the position of left most unset bit
    pos = 1
    while n & (1 << pos):
        pos += 1

    # set the bit at pos
    n |= (1 << pos)

    return n; print(set_left_most_unset_bit(12))") == 14 ]
then
    echo "Test 171 passed"
else
    echo "Test 171 failed"
fi

if [ $(python -c "def set_left_most_unset_bit(n):
    # find the position of left most unset bit
    pos = 1
    while n & (1 << pos):
        pos += 1

    # set the bit at pos
    n |= (1 << pos)

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
    power = 0
    while (2 ** power) <= n:
        power += 1
    return 2 ** (power - 1)

if [ $(python -c "def highest_Power_of_2(n):
    power = 0
    while (2 ** power) <= n:
        power += 1
    return 2 ** (power - 1); print(highest_Power_of_2(10))") == 8 ]
then
    echo "Test 173 passed"
else
    echo "Test 173 failed"
fi

if [ $(python -c "def highest_Power_of_2(n):
    power = 0
    while (2 ** power) <= n:
        power += 1
    return 2 ** (power - 1); print(highest_Power_of_2(19))") == 16 ]
then
    echo "Test 173 passed"
else
    echo "Test 173 failed"
fi

if [ $(python -c "def highest_Power_of_2(n):
    power = 0
    while (2 ** power) <= n:
        power += 1
    return 2 ** (power - 1); print(highest_Power_of_2(32))") == 32 ]
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
        lucas = [2, 1]
        for i in range(2, n + 1):
            lucas.append(lucas[i - 1] + lucas[i - 2])
        return lucas[n]

if [ $(python -c "def find_lucas(n):
    if n == 0:
        return 2
    elif n == 1:
        return 1
    else:
        lucas = [2, 1]
        for i in range(2, n + 1):
            lucas.append(lucas[i - 1] + lucas[i - 2])
        return lucas[n]; print(find_lucas(9))") == 76 ]
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
        lucas = [2, 1]
        for i in range(2, n + 1):
            lucas.append(lucas[i - 1] + lucas[i - 2])
        return lucas[n]; print(find_lucas(4))") == 7 ]
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
        lucas = [2, 1]
        for i in range(2, n + 1):
            lucas.append(lucas[i - 1] + lucas[i - 2])
        return lucas[n]; print(find_lucas(3))") == 4 ]
then
    echo "Test 174 passed"
else
    echo "Test 174 failed"
fi

# Test 175
def add_string(lst, format_string):
    return [format_string.format(i) for i in lst]

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
        if type(i) == list:
            total += sum_of_digits(i)
        elif type(i) == int:
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
def check_tuplex(tuplex, element):
    return element in tuplex

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
    # Convert the number to a list of digits
    digits = list(str(n))
    length = len(digits)

    # Start from the rightmost digit and find the first digit that is smaller than the digit next to it.
    for i in range(length-1, 0, -1):
        if digits[i] > digits[i-1]:
            break
    else:
        # If no such digit is found, then all digits are in descending order which means there cannot be a greater number with same digits
        return False

    # Swap the found digit with the smallest digit greater than the found digit on the right side of found digit.
    x = digits[i-1]
    smallest = i
    for j in range(i+1, length):
        if digits[j] > x and digits[j] < digits[smallest]:
            smallest = j
    digits[smallest], digits[i-1] = digits[i-1], digits[smallest]

    # Sort the digits after the position of found digit in the ascending order
    digits = digits[:i] + sorted(digits[i:])
    return int(''.join(digits))

# Test 191
import heapq

def k_smallest_pairs(nums1, nums2, k):
    if not nums1 or not nums2 or not k:
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
    # Filter out non-numeric values from the list
    numeric_values = [x for x in lst if isinstance(x, (int, float))]
    # Return the minimum value
    return min(numeric_values)

# Test 194
def snake_to_camel(snake_str):
    components = snake_str.split('_')
    return ''.join(x.title() for x in components)

if [ $(python -c "def snake_to_camel(snake_str):
    components = snake_str.split('_')
    return ''.join(x.title() for x in components); print(snake_to_camel('android_tv'))") == AndroidTv ]
then
    echo "Test 194 passed"
else
    echo "Test 194 failed"
fi

if [ $(python -c "def snake_to_camel(snake_str):
    components = snake_str.split('_')
    return ''.join(x.title() for x in components); print(snake_to_camel('google_pixel'))") == GooglePixel ]
then
    echo "Test 194 passed"
else
    echo "Test 194 failed"
fi

if [ $(python -c "def snake_to_camel(snake_str):
    components = snake_str.split('_')
    return ''.join(x.title() for x in components); print(snake_to_camel('apple_watch'))") == AppleWatch ]
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
    return [tup[n] for tup in lst]

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
def max_Product(arr):
    arr.sort()
    return max((arr[0]*arr[1], arr[-1]*arr[-2]), key=sum)

if [ $(python -c "def max_Product(arr):
    arr.sort()
    return max((arr[0]*arr[1], arr[-1]*arr[-2]), key=sum); print(max_Product([1,2,3,4,7,0,8,4]))") == (7, 8) ]
then
    echo "Test 198 passed"
else
    echo "Test 198 failed"
fi

if [ $(python -c "def max_Product(arr):
    arr.sort()
    return max((arr[0]*arr[1], arr[-1]*arr[-2]), key=sum); print(max_Product([0,-1,-2,-4,5,0,-6]))") == (-4, -6) ]
then
    echo "Test 198 passed"
else
    echo "Test 198 failed"
fi

if [ $(python -c "def max_Product(arr):
    arr.sort()
    return max((arr[0]*arr[1], arr[-1]*arr[-2]), key=sum); print(max_Product([1,2,3]))") == (2, 3) ]
then
    echo "Test 198 passed"
else
    echo "Test 198 failed"
fi

# Test 199
def group_tuples(tuples):
    # Create a dictionary to store the grouped tuples
    grouped = {}
    for t in tuples:
        # If the first element of the tuple is not in the dictionary, add it
        if t[0] not in grouped:
            grouped[t[0]] = [t[0], t[1]]
        # If the first element of the tuple is already in the dictionary, append the second element of the tuple
        else:
            grouped[t[0]].append(t[1])
    # Convert the dictionary values to tuples and return them as a list
    return [tuple(v) for v in grouped.values()]

if [ $(python -c "def group_tuples(tuples):
    # Create a dictionary to store the grouped tuples
    grouped = {}
    for t in tuples:
        # If the first element of the tuple is not in the dictionary, add it
        if t[0] not in grouped:
            grouped[t[0]] = [t[0], t[1]]
        # If the first element of the tuple is already in the dictionary, append the second element of the tuple
        else:
            grouped[t[0]].append(t[1])
    # Convert the dictionary values to tuples and return them as a list
    return [tuple(v) for v in grouped.values()]; print(group_tuples([('x', 'y'), ('x', 'z'), ('w', 't')]))") == [('x', 'y', 'z'), ('w', 't')] ]
then
    echo "Test 199 passed"
else
    echo "Test 199 failed"
fi

if [ $(python -c "def group_tuples(tuples):
    # Create a dictionary to store the grouped tuples
    grouped = {}
    for t in tuples:
        # If the first element of the tuple is not in the dictionary, add it
        if t[0] not in grouped:
            grouped[t[0]] = [t[0], t[1]]
        # If the first element of the tuple is already in the dictionary, append the second element of the tuple
        else:
            grouped[t[0]].append(t[1])
    # Convert the dictionary values to tuples and return them as a list
    return [tuple(v) for v in grouped.values()]; print(group_tuples([('a', 'b'), ('a', 'c'), ('d', 'e')]))") == [('a', 'b', 'c'), ('d', 'e')] ]
then
    echo "Test 199 passed"
else
    echo "Test 199 failed"
fi

if [ $(python -c "def group_tuples(tuples):
    # Create a dictionary to store the grouped tuples
    grouped = {}
    for t in tuples:
        # If the first element of the tuple is not in the dictionary, add it
        if t[0] not in grouped:
            grouped[t[0]] = [t[0], t[1]]
        # If the first element of the tuple is already in the dictionary, append the second element of the tuple
        else:
            grouped[t[0]].append(t[1])
    # Convert the dictionary values to tuples and return them as a list
    return [tuple(v) for v in grouped.values()]; print(group_tuples([('f', 'g'), ('f', 'g'), ('h', 'i')]))") == [('f', 'g', 'g'), ('h', 'i')] ]
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
    rounded_lst = [round(num) for num in lst]
    return sum(rounded_lst) * len(rounded_lst)

# Test 202
def cube_Sum(n):
    sum = 0
    for i in range(1, n+1):
        sum += (2*i)**3
    return sum

if [ $(python -c "def cube_Sum(n):
    sum = 0
    for i in range(1, n+1):
        sum += (2*i)**3
    return sum; print(cube_Sum(2))") == 72 ]
then
    echo "Test 202 passed"
else
    echo "Test 202 failed"
fi

if [ $(python -c "def cube_Sum(n):
    sum = 0
    for i in range(1, n+1):
        sum += (2*i)**3
    return sum; print(cube_Sum(3))") == 288 ]
then
    echo "Test 202 passed"
else
    echo "Test 202 failed"
fi

if [ $(python -c "def cube_Sum(n):
    sum = 0
    for i in range(1, n+1):
        sum += (2*i)**3
    return sum; print(cube_Sum(4))") == 800 ]
then
    echo "Test 202 passed"
else
    echo "Test 202 failed"
fi

# Test 203
def concatenate_tuple(tup, delimiter='-'):
    return delimiter.join(str(i) for i in tup)

if [ $(python -c "def concatenate_tuple(tup, delimiter='-'):
    return delimiter.join(str(i) for i in tup); print(concatenate_tuple(("ID", "is", 4, "UTS") ))") == ID-is-4-UTS ]
then
    echo "Test 203 passed"
else
    echo "Test 203 failed"
fi

if [ $(python -c "def concatenate_tuple(tup, delimiter='-'):
    return delimiter.join(str(i) for i in tup); print(concatenate_tuple(("QWE", "is", 4, "RTY") ))") == QWE-is-4-RTY ]
then
    echo "Test 203 passed"
else
    echo "Test 203 failed"
fi

if [ $(python -c "def concatenate_tuple(tup, delimiter='-'):
    return delimiter.join(str(i) for i in tup); print(concatenate_tuple(("ZEN", "is", 4, "OP") ))") == ZEN-is-4-OP ]
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
def change_date_format(date):
    return '-'.join(date.split('-')[::-1])

if [ $(python -c "def change_date_format(date):
    return '-'.join(date.split('-')[::-1]); print(change_date_format("2026-01-02"))") == 02-01-2026 ]
then
    echo "Test 208 passed"
else
    echo "Test 208 failed"
fi

if [ $(python -c "def change_date_format(date):
    return '-'.join(date.split('-')[::-1]); print(change_date_format("2020-11-13"))") == 13-11-2020 ]
then
    echo "Test 208 passed"
else
    echo "Test 208 failed"
fi

if [ $(python -c "def change_date_format(date):
    return '-'.join(date.split('-')[::-1]); print(change_date_format("2021-04-26"))") == 26-04-2021 ]
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
        for i in range(gap, n):
            temp = arr[i]
            j = i
            while j >= gap and arr[j-gap] > temp:
                arr[j] = arr[j-gap]
                j -= gap
            arr[j] = temp
        gap //= 2

    return arr

if [ $(python -c "def shell_sort(arr):
    n = len(arr)
    gap = n//2

    while gap > 0:
        for i in range(gap, n):
            temp = arr[i]
            j = i
            while j >= gap and arr[j-gap] > temp:
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
        for i in range(gap, n):
            temp = arr[i]
            j = i
            while j >= gap and arr[j-gap] > temp:
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
        for i in range(gap, n):
            temp = arr[i]
            j = i
            while j >= gap and arr[j-gap] > temp:
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
    return c - (b**2 / (4*a))

# Test 212
def common_element(list1, list2):
    for element in list1:
        if element in list2:
            return True
    return False

# Test 213
def median_trapezium(a, b, h):
    return (a + b) / 2

# Test 214
def check_greater(arr, num):
    return all(x < num for x in arr)

if [ $(python -c "def check_greater(arr, num):
    return all(x < num for x in arr); print(check_greater([1, 2, 3, 4, 5], 4))") == False ]
then
    echo "Test 214 passed"
else
    echo "Test 214 failed"
fi

if [ $(python -c "def check_greater(arr, num):
    return all(x < num for x in arr); print(check_greater([2, 3, 4, 5, 6], 8))") == True ]
then
    echo "Test 214 passed"
else
    echo "Test 214 failed"
fi

if [ $(python -c "def check_greater(arr, num):
    return all(x < num for x in arr); print(check_greater([9, 7, 4, 8, 6, 1], 11))") == True ]
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
        for j in range(i+1, len(lst)):
            if lst[i] == tuple(reversed(lst[j])):
                count += 1
    return count

if [ $(python -c "def count_bidirectional(lst):
    count = 0
    for i in range(len(lst)):
        for j in range(i+1, len(lst)):
            if lst[i] == tuple(reversed(lst[j])):
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
        for j in range(i+1, len(lst)):
            if lst[i] == tuple(reversed(lst[j])):
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
        for j in range(i+1, len(lst)):
            if lst[i] == tuple(reversed(lst[j])):
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
import nltk

def find_adverb_position(sentence):
    words = nltk.word_tokenize(sentence)
    pos = nltk.pos_tag(words)
    for i, (word, tag) in enumerate(pos):
        if tag in ('RB', 'RBR', 'RBS'):  # these are the POS tags for adverbs in NLTK
            return (i, i+len(word), word)
    return None

# Test 222
def surfacearea_cube(side_length):
    return 6 * side_length ** 2

# Test 223
def positive_count(arr):
    positive_nums = [num for num in arr if num > 0]
    return round(len(positive_nums) / len(arr), 2)

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
    perrin = [3, 0, 2]
    if n < 3:
        return sum(perrin[:n+1])
    else:
        for i in range(3, n+1):
            perrin.append(perrin[i-2] + perrin[i-3])
        return sum(perrin)

if [ $(python -c "def cal_sum(n):
    perrin = [3, 0, 2]
    if n < 3:
        return sum(perrin[:n+1])
    else:
        for i in range(3, n+1):
            perrin.append(perrin[i-2] + perrin[i-3])
        return sum(perrin); print(cal_sum(9))") == 49 ]
then
    echo "Test 229 passed"
else
    echo "Test 229 failed"
fi

if [ $(python -c "def cal_sum(n):
    perrin = [3, 0, 2]
    if n < 3:
        return sum(perrin[:n+1])
    else:
        for i in range(3, n+1):
            perrin.append(perrin[i-2] + perrin[i-3])
        return sum(perrin); print(cal_sum(10))") == 66 ]
then
    echo "Test 229 passed"
else
    echo "Test 229 failed"
fi

if [ $(python -c "def cal_sum(n):
    perrin = [3, 0, 2]
    if n < 3:
        return sum(perrin[:n+1])
    else:
        for i in range(3, n+1):
            perrin.append(perrin[i-2] + perrin[i-3])
        return sum(perrin); print(cal_sum(11))") == 88 ]
then
    echo "Test 229 passed"
else
    echo "Test 229 failed"
fi

# Test 230
def extract_string(lst, size):
    return [i for i in lst if len(i) == size]

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
def loss_amount(cost_price, selling_price):
    if cost_price > selling_price:
        return cost_price - selling_price
    else:
        return 0

# Test 233
def sumofFactors(n):
    sum = 0
    i = 1
    while i <= n:
        if n % i == 0:
            if i % 2 == 0:
                sum += i
        i += 1
    return sum

if [ $(python -c "def sumofFactors(n):
    sum = 0
    i = 1
    while i <= n:
        if n % i == 0:
            if i % 2 == 0:
                sum += i
        i += 1
    return sum; print(sumofFactors(18))") == 26 ]
then
    echo "Test 233 passed"
else
    echo "Test 233 failed"
fi

if [ $(python -c "def sumofFactors(n):
    sum = 0
    i = 1
    while i <= n:
        if n % i == 0:
            if i % 2 == 0:
                sum += i
        i += 1
    return sum; print(sumofFactors(30))") == 48 ]
then
    echo "Test 233 passed"
else
    echo "Test 233 failed"
fi

if [ $(python -c "def sumofFactors(n):
    sum = 0
    i = 1
    while i <= n:
        if n % i == 0:
            if i % 2 == 0:
                sum += i
        i += 1
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
from itertools import chain, combinations

def combinations_list(lst):
    return [list(comb) for comb in chain(*map(lambda x: combinations(lst, x), range(0, len(lst)+1)))]

print(combinations_list(['orange', 'red', 'green', 'blue']))
print(combinations_list(['red', 'green', 'blue', 'white', 'black', 'orange']))
print(combinations_list(['red', 'green', 'black', 'orange']))

# Test 243
def max_subarray_product(arr):
    n = len(arr)

    # Initialize maximum product ending at each index
    max_ending_here = 1
    min_ending_here = 1

    # Initialize overall maximum product
    max_so_far = 0

    for i in range(n):
        if arr[i] > 0:
            max_ending_here = max_ending_here * arr[i]
            min_ending_here = min(min_ending_here * arr[i], 1)
        elif arr[i] == 0:
            max_ending_here = 1
            min_ending_here = 1
        else:
            temp = max_ending_here
            max_ending_here = max(min_ending_here * arr[i], 1)
            min_ending_here = temp * arr[i]

        if max_so_far < max_ending_here:
            max_so_far = max_ending_here

    return max_so_far

if [ $(python -c "def max_subarray_product(arr):
    n = len(arr)

    # Initialize maximum product ending at each index
    max_ending_here = 1
    min_ending_here = 1

    # Initialize overall maximum product
    max_so_far = 0

    for i in range(n):
        if arr[i] > 0:
            max_ending_here = max_ending_here * arr[i]
            min_ending_here = min(min_ending_here * arr[i], 1)
        elif arr[i] == 0:
            max_ending_here = 1
            min_ending_here = 1
        else:
            temp = max_ending_here
            max_ending_here = max(min_ending_here * arr[i], 1)
            min_ending_here = temp * arr[i]

        if max_so_far < max_ending_here:
            max_so_far = max_ending_here

    return max_so_far; print(max_subarray_product([1, -2, -3, 0, 7, -8, -2]))") == 112 ]
then
    echo "Test 243 passed"
else
    echo "Test 243 failed"
fi

if [ $(python -c "def max_subarray_product(arr):
    n = len(arr)

    # Initialize maximum product ending at each index
    max_ending_here = 1
    min_ending_here = 1

    # Initialize overall maximum product
    max_so_far = 0

    for i in range(n):
        if arr[i] > 0:
            max_ending_here = max_ending_here * arr[i]
            min_ending_here = min(min_ending_here * arr[i], 1)
        elif arr[i] == 0:
            max_ending_here = 1
            min_ending_here = 1
        else:
            temp = max_ending_here
            max_ending_here = max(min_ending_here * arr[i], 1)
            min_ending_here = temp * arr[i]

        if max_so_far < max_ending_here:
            max_so_far = max_ending_here

    return max_so_far; print(max_subarray_product([6, -3, -10, 0, 2]))") == 180 ]
then
    echo "Test 243 passed"
else
    echo "Test 243 failed"
fi

if [ $(python -c "def max_subarray_product(arr):
    n = len(arr)

    # Initialize maximum product ending at each index
    max_ending_here = 1
    min_ending_here = 1

    # Initialize overall maximum product
    max_so_far = 0

    for i in range(n):
        if arr[i] > 0:
            max_ending_here = max_ending_here * arr[i]
            min_ending_here = min(min_ending_here * arr[i], 1)
        elif arr[i] == 0:
            max_ending_here = 1
            min_ending_here = 1
        else:
            temp = max_ending_here
            max_ending_here = max(min_ending_here * arr[i], 1)
            min_ending_here = temp * arr[i]

        if max_so_far < max_ending_here:
            max_so_far = max_ending_here

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
def drop_empty(dict):
    return {k: v for k, v in dict.items() if v is not None}

# Test 246
def max_product(arr):
    n = len(arr)
    if n == 0:
        return 0
    dp = [0]*n
    dp[0] = arr[0]
    for i in range(1, n):
        max_val = 0
        for j in range(i):
            if arr[i] > arr[j]:
                max_val = max(max_val, dp[j])
        dp[i] = max_val * arr[i]
    return max(dp)

if [ $(python -c "def max_product(arr):
    n = len(arr)
    if n == 0:
        return 0
    dp = [0]*n
    dp[0] = arr[0]
    for i in range(1, n):
        max_val = 0
        for j in range(i):
            if arr[i] > arr[j]:
                max_val = max(max_val, dp[j])
        dp[i] = max_val * arr[i]
    return max(dp); print(max_product([3, 100, 4, 5, 150, 6]))") == 3000 ]
then
    echo "Test 246 passed"
else
    echo "Test 246 failed"
fi

if [ $(python -c "def max_product(arr):
    n = len(arr)
    if n == 0:
        return 0
    dp = [0]*n
    dp[0] = arr[0]
    for i in range(1, n):
        max_val = 0
        for j in range(i):
            if arr[i] > arr[j]:
                max_val = max(max_val, dp[j])
        dp[i] = max_val * arr[i]
    return max(dp); print(max_product([4, 42, 55, 68, 80]))") == 50265600 ]
then
    echo "Test 246 passed"
else
    echo "Test 246 failed"
fi

if [ $(python -c "def max_product(arr):
    n = len(arr)
    if n == 0:
        return 0
    dp = [0]*n
    dp[0] = arr[0]
    for i in range(1, n):
        max_val = 0
        for j in range(i):
            if arr[i] > arr[j]:
                max_val = max(max_val, dp[j])
        dp[i] = max_val * arr[i]
    return max(dp); print(max_product([10, 22, 9, 33, 21, 50, 41, 60]))") == 2460 ]
then
    echo "Test 246 passed"
else
    echo "Test 246 failed"
fi

# Test 247
def add_pairwise(t):
    return tuple(t[i] + t[i+1] for i in range(len(t)-1))

if [ $(python -c "def add_pairwise(t):
    return tuple(t[i] + t[i+1] for i in range(len(t)-1)); print(add_pairwise((1, 5, 7, 8, 10)))") == (6, 12, 15, 18) ]
then
    echo "Test 247 passed"
else
    echo "Test 247 failed"
fi

if [ $(python -c "def add_pairwise(t):
    return tuple(t[i] + t[i+1] for i in range(len(t)-1)); print(add_pairwise((2, 6, 8, 9, 11)))") == (8, 14, 17, 20) ]
then
    echo "Test 247 passed"
else
    echo "Test 247 failed"
fi

if [ $(python -c "def add_pairwise(t):
    return tuple(t[i] + t[i+1] for i in range(len(t)-1)); print(add_pairwise((3, 7, 9, 10, 12)))") == (10, 16, 19, 22) ]
then
    echo "Test 247 passed"
else
    echo "Test 247 failed"
fi

# Test 248
def find_remainder(arr, n):
    product = 1
    for i in arr:
        product = (product * i) % n
    return product % n

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
def tuple_intersection(list1, list2):
    set1 = {tuple(sorted(t)) for t in list1}
    set2 = {tuple(sorted(t)) for t in list2}
    return set1 & set2

if [ $(python -c "def tuple_intersection(list1, list2):
    set1 = {tuple(sorted(t)) for t in list1}
    set2 = {tuple(sorted(t)) for t in list2}
    return set1 & set2; print(tuple_intersection([(3, 4), (5, 6), (9, 10), (4, 5)] , [(5, 4), (3, 4), (6, 5), (9, 11)]))") == {(4, 5), (5, 6), (3, 4)} ]
then
    echo "Test 250 passed"
else
    echo "Test 250 failed"
fi

if [ $(python -c "def tuple_intersection(list1, list2):
    set1 = {tuple(sorted(t)) for t in list1}
    set2 = {tuple(sorted(t)) for t in list2}
    return set1 & set2; print(tuple_intersection([(4, 1), (7, 4), (11, 13), (17, 14)] , [(1, 4), (7, 4), (16, 12), (10, 13)]))") == {(4, 7), (1, 4)} ]
then
    echo "Test 250 passed"
else
    echo "Test 250 failed"
fi

if [ $(python -c "def tuple_intersection(list1, list2):
    set1 = {tuple(sorted(t)) for t in list1}
    set2 = {tuple(sorted(t)) for t in list2}
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
def big_sum(arr):
    return max(arr) + min(arr)

if [ $(python -c "def big_sum(arr):
    return max(arr) + min(arr); print(big_sum([1,2,3]))") == 4 ]
then
    echo "Test 253 passed"
else
    echo "Test 253 failed"
fi

if [ $(python -c "def big_sum(arr):
    return max(arr) + min(arr); print(big_sum([-1,2,3,4]))") == 3 ]
then
    echo "Test 253 passed"
else
    echo "Test 253 failed"
fi

if [ $(python -c "def big_sum(arr):
    return max(arr) + min(arr); print(big_sum([2,3,6]))") == 8 ]
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
    n = str(n)
    return int(n[0])

if [ $(python -c "def first_Digit(n):
    n = str(n)
    return int(n[0]); print(first_Digit(123))") == 1 ]
then
    echo "Test 256 passed"
else
    echo "Test 256 failed"
fi

if [ $(python -c "def first_Digit(n):
    n = str(n)
    return int(n[0]); print(first_Digit(456))") == 4 ]
then
    echo "Test 256 passed"
else
    echo "Test 256 failed"
fi

if [ $(python -c "def first_Digit(n):
    n = str(n)
    return int(n[0]); print(first_Digit(12))") == 1 ]
then
    echo "Test 256 passed"
else
    echo "Test 256 failed"
fi

