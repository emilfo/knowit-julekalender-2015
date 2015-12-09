function COL_TITLE(NUM)
    local OUT =  ""
    while NUM > 1 do
        NUM, OUT = math.floor((NUM-1)/26), string.char(((NUM-1)%26 + 65))..OUT
    end
    return OUT
end

print(COL_TITLE(142453146368))
