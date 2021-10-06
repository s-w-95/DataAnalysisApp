"""
/문자는 "와'를 사용해 표현가능함
"""

"""
a = "Hello World"

print(a) /문자열 출력
"""

"""
/백슬레쉬를 통해 여러가지 문자열 표현가능
ex) Wn Wt WW W' W"
"""

"""
/큰따옴표 3개는 문자열을 자유롭게 작성할 수 있게 함
"""

"""
a = "python "
b = "is fun"

print(a+b) or print(a*100) /문자열의 연산
"""

"""
a = "Life is simple"

print(a[3]) /문자열의 인덱싱 (음수는 뒤에서부터 센다. ex) -1은 맨뒤글자)
"""

"""
a = "Life is simple"

print(a[::1]) /문자열을 출력할 때 1이상 2미만 3간격으로 출력한다. (간격이 음수일때는 1이 2보다 커야된다.)
"""

"""
a = "I eat %d apples." %3
b = "I eat " + str(3) + " apples"

print(b) /숫자 문자 변환은 str로 문자안의 어떠한 것을 나중에 표현하기위해 %d를 쓴다.
"""

"""
number = 10
day = "three"
a = "I ate %d apples. so I was sick for %s days." %(number, day)

print(a) /나중에 추가하기 위해 쓰는 %중 %s %d %f는 각각 문자열 정수 실수를 추가할 때 사용
"""

"""
a = "any {} left".format("food")

print(a) /format을 사용해 문자열 안에 빈괄호에 넣을 단어를 나중에 추가 가능
"""

"""
/문자열 자료형 함수 ex) a.count('b'), a.find('b'), a.index('t'), a = ",".join('abcd') 
a.upper(), a.lower(), a.strip(), a.replace("Life", "Your leg"), a.split()스플릿은 
함수안의 조건으로 문자열을 나눠 리스트를 생성
"""

a = "When is your birthday party"

print(a.split())