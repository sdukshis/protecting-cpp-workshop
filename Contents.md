# План мастер-класса

1. Вступление
   1. Цель - популяризация Secure Development Lifecycle
   2. Подход - от понимания уязвимостей к внедрению SDL
   3. О себе. 8 лет в разработке ПО для ИБ, 14 лет в преподавании, 6 лет в качестве докладчика на индустриальных конференциях
   4. История возникновения этого МК
   5. План. Отдельно для тех, кто уже и так много знает
2. Инструменты
   1. Vagrant + VirtualBox
   2. Ubuntu 14.04
   3. gcc
   4. gdb
   5. nasm
   6. perl
   7. objdump
   8. make
   9. xxd
3. Ликбез
   1. Архитектура x86
   2. Системные вызовы Linux на ассемблере
      1. Пример. Hello, world
      2. Пример. Отладка в gdb
      3. Пример. fork + exec
   3. Linux User Space Memory Segments
      1. Пример. Hello, world + gdb
   4. Структура стекового фрейма
      1. Пример. gcd + gdb
4. Stack buffer overflow
   1. Пример. strcpy + argv + DoS
   2. Пример. strcpy + argv + pwned
   3. Пример. strcpy + argv + shellcode
   4. Пример. strcpy + argv + backdoor
   5. Задание
5. Threat modeling
6. Application Hardening
   1. NonExecutable stack
      1. Пример. return to libc
   2. ASRL
      1. Пример. угадай
   3. SSP
      1. Пример. Перезапись локальной переменной
   4. FORTIFY_SOURCE
7. SAST
   1. Пример. clang-tidy
   2. Пример. PVS-Studio
8. Задание. wavefront obj
9. DAST
   1. Пример. ASAN
   2. Пример. afl-fuzz
   3. Пример. libfuzzer
10. Задание. libpng
11. Heap buffer overflow
    1.  Устройство аллокатора
    2.  GOT
    3.  Пример. strcpy+strcpy
    4.  Пример. unlink
12. Задание. ?
13. 3rd party vulnerabilities
    1.  CVSS, CVE, CWE
    2.  Пример. ?
14. Задание. ?
15. 1-byte overflow
    1.  ПРимер ?
    1.  Задание. ?
16. integer overflow
    1.  Пример ?
    2.  Пример. UBSAN
    3.  Задание
17. Signedness bugs
    1.  Пример
    2.  Задание. nullhttpd?
18. Hardening CI/CD
    1.  ?
19. Response
    1.  Bug bounty
    2.  Mitigation plan
20. Заключение
21. Обзор источников
    
