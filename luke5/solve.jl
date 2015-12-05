f = open("input");

#words are now 1.characters sorted 2. then sorted in the array
words = sort(map((w) -> join(sort(split(w, ""))), split(readall(f))))

#unnescessary huge compare
anagrams = 0
cur = 1
cmp = cur + 1
while(cmp <= length(words))
    if (words[cur] == words[cmp])
        anagrams += 1
        cur += 1
    else
        if (cur < cmp)
           cur += 1
        end
        cmp = cur+1
    end
end

print("anagrams: $anagrams\n")
